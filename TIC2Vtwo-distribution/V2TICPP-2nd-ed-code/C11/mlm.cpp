//: C11:mlm.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// A GGI program to maintain a mailing list
#include "CGImap.h"
#include <fstream>
using namespace std;
const string contact("Bruce@EckelObjects.com");
// Paths in this program are for Linux/Unix. You
// must use backslashes (two for each single 
// slash) on Win32 servers:
const string rootpath("/home/eckel/");

int main() {
  cout << "Content-type: text/html\n"<< endl;
  CGImap query(getenv("QUERY_STRING"));
  if(query["test-field"] == "on") {
    cout << "map size: " << query.size() << "<br>";
    query.dump(cout, "<br>");
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
    cout << "<h2>You cannot use white space "
      "in your email address" << endl;
    return 0;
  }
  if(email.find('@') == string::npos) {
    cout << "<h2>You must use a proper email"
      " address including an '@' sign" << endl;
    return 0;
  }
  if(email.find('.') == string::npos) {
    cout << "<h2>You must use a proper email"
      " address including a '.'" << endl;
    return 0;
  }
  string fname = email;
  if(query["command-field"] == "add")
    fname += ".add";
  else if(query["command-field"] == "remove")
    fname += ".remove";
  else {  
    cout << "error: command-field not found. Contact "
      << contact << endl;
    return 0;
  }
  string path(rootpath + query["subject-field"] 
    + "/" + fname);
  ofstream out(path.c_str());
  if(!out) {
    cout << "cannot open " << path << "; Contact"
      << contact << endl;
    return 0;
  }
  out << email << endl;
  cout << "<br><H2>" << email << " has been ";
  if(query["command-field"] == "add")
    cout << "added";
  else if(query["command-field"] == "remove")
    cout << "removed";
  cout << "<br>Thank you</H2>" << endl;
} ///:~
