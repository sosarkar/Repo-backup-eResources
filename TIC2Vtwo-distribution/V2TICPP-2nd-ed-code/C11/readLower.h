//: C11:readLower.h
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Read a file into a container of string, 
// forcing each line to lower case.
#ifndef READLOWER_H
#define READLOWER_H
#include "../require.h"
#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>
#include <cctype>

inline char downcase(char c) {
  using namespace std; // Compiler bug
  return tolower(c);
}

std::string lcase(std::string s) {
  std::transform(s.begin(), s.end(),
    s.begin(), downcase);
  return s;
}

template<class SContainer> 
void readLower(char* filename, SContainer& c) {
  std::ifstream in(filename);
  assure(in, filename);
  const int sz = 1024;
  char buf[sz];
  while(in.getline(buf, sz))
    // Force to lowercase:
    c.push_back(string(lcase(buf)));
} 
#endif // READLOWER_H ///:~
