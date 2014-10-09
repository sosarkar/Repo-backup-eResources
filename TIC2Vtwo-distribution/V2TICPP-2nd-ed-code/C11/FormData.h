//: C11:FormData.h
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#include <string>
#include <iostream>
#include <fstream>
#include <vector>
using namespace std;

class DataPair : public pair<string, string> {
public:
  DataPair() {}
  DataPair(istream& in) { get(in); }
  DataPair& get(istream& in);
  operator bool() {
    return first.length() != 0;
  }
};

class FormData : public vector<DataPair> {
public:
  string filePath, email;
  // Parse the data from a file:
  FormData(char* fileName);
  void dump(ostream& os = cout);
  string operator[](const string& key);
}; ///:~
