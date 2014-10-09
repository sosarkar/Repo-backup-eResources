//: C11:ProcessApplication.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
//{L} FormData
#include "FormData.h"
#include "../require.h"
using namespace std;

const string from("Bruce@EckelObjects.com");
const string replyto("Bruce@EckelObjects.com");
const string basepath("/home/eckel");

int main(int argc, char* argv[]) {
  requireArgs(argc, 1);
  FormData fd(argv[1]);
  char tfname[L_tmpnam];
  tmpnam(tfname); // Create a temporary file name
  string tempfile(basepath + tfname + fd.email);
  ofstream reply(tempfile.c_str());
  assure(reply, tempfile.c_str());
  reply << "This message is to verify that you "
    "have been added to the list for the "
    << fd["subject-field"] << ". Your signup "
    "form included the following data; please "
    "ensure it is correct. You will receive "
    "further updates via email. Thanks for your "
    "interest in the class!" << endl;
  FormData::iterator i;
  for(i = fd.begin(); i != fd.end(); i++)
    reply << (*i).first << " = " 
       << (*i).second << endl;
  reply.close();
  // "fastmail" only available on Linux/Unix:
  string command("fastmail -F " + from + 
    " -r " + replyto + " -s \"" + 
    fd["subject-field"] + "\" " +
    tempfile + " " + fd.email);
  system(command.c_str()); // Wait to finish
  remove(tempfile.c_str()); // Erase the file
} ///:~
