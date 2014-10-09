//: C11:Batchmail.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Sends mail to a list using Unix fastmail
#include "../require.h"
#include <iostream>
#include <fstream>
#include <string>
#include <strstream>
#include <cstdlib> // system() function
using namespace std;

string subject("New Intensive Workshops");
string from("Bruce@EckelObjects.com");
string replyto("Bruce@EckelObjects.com");
ofstream logfile("BatchMail.log");

int main(int argc, char* argv[]) {
  requireArgs(argc, 2,
    "Usage: Batchmail namelist mailfile");
  ifstream names(argv[1]);
  assure(names, argv[1]);
  string name;
  while(getline(names, name)) {
    ofstream msg("m.txt");
    assure(msg, "m.txt");
    msg << "To be removed from this list, "
      "DO NOT REPLY TO THIS MESSAGE. Instead, \n"
      "click on the following URL, or visit it "
      "using your Web browser. This \n"
      "way, the proper email address will be "
      "removed. Here's the URL:\n"
      << "http://www.mindview.net/cgi-bin/"
      "mlm.exe?subject-field=workshop-email-list"
      "&command-field=remove&email-address="
      << name << "&submit=submit\n\n"
      "------------------------------------\n\n";
    ifstream text(argv[2]);
    assure(text, argv[1]);
    msg << text.rdbuf() << endl;
    msg.close();
    string command("fastmail -F " + from + 
      " -r " + replyto + " -s \"" + subject + 
      "\" m.txt " + name);
    system(command.c_str());
    logfile << command << endl;
    static int mailcounter = 0;
    const int bsz = 25; 
    char buf[bsz];
    // Convert mailcounter to a char string:
    ostrstream mcounter(buf, bsz);
    mcounter << mailcounter++ << ends;
    if((++mailcounter % 500) == 0) {
      string command2("fastmail -F " + from + 
        " -r " + replyto + " -s \"Sent " +
        string(buf) + 
        " messages \" m.txt eckel@aol.com");
      system(command2.c_str());
    }
  }
} ///:~
