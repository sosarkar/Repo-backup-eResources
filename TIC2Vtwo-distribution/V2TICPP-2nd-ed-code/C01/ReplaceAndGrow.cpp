//: C01:ReplaceAndGrow.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#include <string>
#include <iostream>
using namespace std;

int main() {
  string bigNews("I saw Elvis in a UFO. "
    "I have been working too hard.");
  string replacement("wig");
  // The first arg says "replace chars 
  // beyond the end of the existing string":
  bigNews.replace(bigNews.size(), 
    replacement.size(), replacement);
  cout << bigNews << endl;
} ///:~
