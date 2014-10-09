//: C02:Cppcheck.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Configures .h & .cpp files
// To conform to style standard.
// Tests existing files for conformance
#include "../require.h"
#include <fstream>
#include <strstream>
#include <cstring>
#include <cctype>
using namespace std;

int main(int argc, char* argv[]) {
  const int sz = 40;  // Buffer sizes
  const int bsz = 100;
  requireArgs(argc, 1); // File set name
  enum bufs { base, header, implement,
    Hline1, guard1, guard2, guard3,
    CPPline1, include, bufnum };
  char b[bufnum][sz];
  ostrstream osarray[] = {
    ostrstream(b[base], sz),
    ostrstream(b[header], sz),
    ostrstream(b[implement], sz),
    ostrstream(b[Hline1], sz),
    ostrstream(b[guard1], sz),
    ostrstream(b[guard2], sz),
    ostrstream(b[guard3], sz),
    ostrstream(b[CPPline1], sz),
    ostrstream(b[include], sz),
  };
  osarray[base] << argv[1] << ends;
  // Find any '.' in the string using the
  // Standard C library function strchr():
  char* period = strchr(b[base], '.');
  if(period) *period = 0; // Strip extension
  // Force to upper case:
  for(int i = 0; b[base][i]; i++)
    b[base][i] = toupper(b[base][i]);
  // Create file names and internal lines:
  osarray[header] << b[base] << ".h" << ends;
  osarray[implement] << b[base] << ".cpp" << ends;
  osarray[Hline1] << "//" << ": " << b[header]
    << " -- " << ends;
  osarray[guard1] << "#ifndef " << b[base]
                  << "_H" << ends;
  osarray[guard2] << "#define " << b[base]
                  << "_H" << ends;
  osarray[guard3] << "#endif // " << b[base]
                  << "_H" << ends;
  osarray[CPPline1] << "//" << ": "
                    << b[implement]
                    << " -- " << ends;
  osarray[include] << "#include \""
                   << b[header] << "\"" <<ends;
  // First, try to open existing files:
  ifstream existh(b[header]),
           existcpp(b[implement]);
  if(!existh) { // Doesn't exist; create it
    ofstream newheader(b[header]);
    assure(newheader, b[header]);
    newheader << b[Hline1] << endl
      << b[guard1] << endl
      << b[guard2] << endl << endl
      << b[guard3] << endl;
  }
  if(!existcpp) { // Create cpp file
    ofstream newcpp(b[implement]);
    assure(newcpp, b[implement]);
    newcpp << b[CPPline1] << endl
      << b[include] << endl;
  }
  if(existh) { // Already exists; verify it
    strstream hfile; // Write & read
    ostrstream newheader; // Write
    hfile << existh.rdbuf() << ends;
    // Check that first line conforms:
    char buf[bsz];
    if(hfile.getline(buf, bsz)) {
      if(!strstr(buf, "//" ":") ||
         !strstr(buf, b[header]))
        newheader << b[Hline1] << endl;
    }
    // Ensure guard lines are in header:
    if(!strstr(hfile.str(), b[guard1]) ||
       !strstr(hfile.str(), b[guard2]) ||
       !strstr(hfile.str(), b[guard3])) {
       newheader << b[guard1] << endl
         << b[guard2] << endl
         << buf
         << hfile.rdbuf() << endl
         << b[guard3] << endl << ends;
    } else
      newheader << buf
        << hfile.rdbuf() << ends;
    // If there were changes, overwrite file:
    if(strcmp(hfile.str(),newheader.str())!=0){
      existh.close();
      ofstream newH(b[header]);
      assure(newH, b[header]);
      newH << "//@//" << endl // Change marker
        << newheader.rdbuf();
    }
    delete hfile.str();
    delete newheader.str();
  }
  if(existcpp) { // Already exists; verify it
    strstream cppfile;
    ostrstream newcpp;
    cppfile << existcpp.rdbuf() << ends;
    char buf[bsz];
    // Check that first line conforms:
    if(cppfile.getline(buf, bsz))
      if(!strstr(buf, "//" ":") ||
         !strstr(buf, b[implement]))
        newcpp << b[CPPline1] << endl;
    // Ensure header is included:
    if(!strstr(cppfile.str(), b[include]))
      newcpp << b[include] << endl;
    // Put in the rest of the file:
    newcpp << buf << endl; // First line read
    newcpp << cppfile.rdbuf() << ends;
    // If there were changes, overwrite file:
    if(strcmp(cppfile.str(),newcpp.str())!=0){
      existcpp.close();
      ofstream newCPP(b[implement]);
      assure(newCPP, b[implement]);
      newCPP << "//@//" << endl // Change marker
        << newcpp.rdbuf();
    }
    delete cppfile.str();
    delete newcpp.str();
  }
} ///:~
