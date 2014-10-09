//: C11:ExtractInfo.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Extracts all the information from a CGI POST
// submission, generates a file and stores the
// information on the server. By generating a 
// unique file name, there are no clashes like
// you get when storing to a single file.
#include "CGImap.h"
#include <iostream>
#include <fstream>
#include <cstdio>
#include <ctime>
using namespace std;

const string contact("Bruce@EckelObjects.com");
// Paths in this program are for Linux/Unix. You
// must use backslashes (two for each single 
// slash) on Win32 servers:
const string rootpath("/home/eckel/");

void show(CGImap& m, ostream& o);
// The definition for the following is the only
// thing you must change to customize the program
void 
store(CGImap& m, ostream& o, string nl = "\n");

int main() {
  cout << "Content-type: text/html\n"<< endl;
  Post p; // Collect the POST data
  CGImap query(p);
  // "test-field" set to "on" will dump contents
  if(query["test-field"] == "on") {
    cout << "map size: " << query.size() << "<br>";
    query.dump(cout);
  }
  if(query["subject-field"].size() == 0) {
    cout << "<h2>Incorrect form. Contact " <<
    contact << endl;
    return 0;
  }
  string email = query["email-address"];
  if(email.size() == 0) {
    cout << "<h2>Please enter your email address"
      << endl;
    return 0;
  }
  if(email.find_first_of(" \t") != string::npos){
    cout << "<h2>You cannot include white space "
      "in your email address" << endl;
    return 0;
  }
  if(email.find('@') == string::npos) {
    cout << "<h2>You must include a proper email"
      " address including an '@' sign" << endl;
    return 0;
  }
  if(email.find('.') == string::npos) {
    cout << "<h2>You must include a proper email"
      " address including a '.'" << endl;
    return 0;
  }
  // Create a unique file name with the user's
  // email address and the current time in hex
  const int bsz = 1024;
  char fname[bsz];
  time_t now;
  time(&now); // Encoded date & time
  sprintf(fname, "%s%X.txt", email.c_str(), now);
  string path(rootpath + query["subject-field"] +
     "/" + fname);
  ofstream out(path.c_str());
  if(!out) {
    cout << "cannot open " << path << "; Contact"
      << contact << endl;
    return 0;
  }
  // Store the file and path information:
  out << "///{" << path << endl;
  // Display optional reminder:
  if(query["reminder"].size() != 0)
    cout <<"<H1>" << query["reminder"] <<"</H1>";
  show(query, cout); // For results page
  store(query, out); // Stash data in file
  cout << "<br><H2>Your submission has been "
    "posted as<br>" << fname << endl 
    << "<br>Thank you</H2>" << endl;
  out.close();
  // Optionally send generated file as email
  // to recipients specified in the field:
  if(query["mail-copy"].length() != 0 &&
     query["mail-copy"] != "no") {
    string to = query["mail-copy"];
    // Parse out the recipient names, separated 
    // by ';', into a vector.
    vector<string> recipients;
    int ii = to.find(';');
    while(ii != string::npos) {
      recipients.push_back(to.substr(0, ii));
      to = to.substr(ii + 1);
      ii = to.find(';');
    }
    recipients.push_back(to); // Last one
    // "fastmail" only available on Linux/Unix:
    for(int i = 0; i < recipients.size(); i++) {
      string cmd("fastmail -s"" \"" +
        query["subject-field"] + "\" " +
        path + " " + recipients[i]);
      system(cmd.c_str());
    }
  }
  // Execute a confirmation program on the file.
  // Typically, this is so you can email a
  // processed data file to the client along with
  // a confirmation message:
  if(query["confirmation"].length() != 0) {
    string conftype = query["confirmation"];
    if(conftype == "confirmation1") {
      string command("./ProcessApplication.exe "+
        path + " &");
      // The data file is the argument, and the
      // ampersand runs it as a separate process:
      system(command.c_str());
      string logfile("Extract.log");
      ofstream log(logfile.c_str());
    }
  }
}

// For displaying the information on the html 
// results page:
void show(CGImap& m, ostream& o) {
  string nl("<br>");
  o << "<h2>The data you entered was:"
    << "</h2><br>"
    << "From[" << m["email-address"] << ']' <<nl;
  for(CGImap::iterator it = m.begin();
    it != m.end(); it++) {
    string name = (*it).first, 
      value = (*it).second;
    if(name != "email-address" && 
       name != "confirmation" &&
       name != "submit" &&
       name != "mail-copy" &&
       name != "test-field" &&
       name != "reminder")
      o << "<h3>" << name << ": </h3>" 
        << "<pre>" << value << "</pre>";
  }
}

// Change this to customize the program:
void store(CGImap& m, ostream& o, string nl) {
  o << "From[" << m["email-address"] << ']' <<nl;
  for(CGImap::iterator it = m.begin();
    it != m.end(); it++) {
    string name = (*it).first, 
      value = (*it).second;
    if(name != "email-address" && 
       name != "confirmation" &&
       name != "submit" &&
       name != "mail-copy" &&
       name != "test-field" &&
       name != "reminder")
      o << nl << "[{[" << name << "]}]" << nl
        << "[([" << nl << value << nl << "])]"
        << nl;
    // Delimiters were added to aid parsing of
    // the resulting text file.
  }
} ///:~
