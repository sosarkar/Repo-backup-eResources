//: C11:CGI_GET.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Tests CGImap by extracting the information
// from a CGI GET submitted by an HTML Web page.
#include "CGImap.h"

int main() {
  // You MUST print this out, otherwise the 
  // server will not send the response:
  cout << "Content-type: text/plain\n" << endl;
  // For a CGI "GET," the server puts the data
  // in the environment variable QUERY_STRING:
  CGImap query(getenv("QUERY_STRING"));
  // Test: dump all names and values
  for(CGImap::iterator it = query.begin();
    it != query.end(); it++) {
    cout << (*it).first << " = "
      << (*it).second << endl;
  }
} ///:~
