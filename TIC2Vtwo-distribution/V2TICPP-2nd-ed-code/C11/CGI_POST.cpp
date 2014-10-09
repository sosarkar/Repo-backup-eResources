//: C11:CGI_POST.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// CGImap works as easily with POST as it
// does with GET. 
#include "CGImap.h"
#include <iostream>
using namespace std;

int main() {
  cout << "Content-type: text/plain\n" << endl;
  Post p; // Get the query string
  CGImap query(p);
  // Test: dump all names and values
  for(CGImap::iterator it = query.begin();
    it != query.end(); it++) {
    cout << (*it).first << " = "
      << (*it).second << endl;
  }
} ///:~
