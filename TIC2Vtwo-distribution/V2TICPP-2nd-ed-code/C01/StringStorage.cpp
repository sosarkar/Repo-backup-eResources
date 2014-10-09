//: C01:StringStorage.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#include <string>
#include <iostream>
using namespace std;

int main() {
  string s1("12345");
  // Set the iterator indicate the first element
  string::iterator it = s1.begin();
  // This may copy the first to the second or 
  // use reference counting to simulate a copy 
  string s2 = s1;
  // Either way, this statement may ONLY modify first
  *it = '0';
  cout << "s1 = " << s1 << endl;
  cout << "s2 = " << s2 << endl;
} ///:~
