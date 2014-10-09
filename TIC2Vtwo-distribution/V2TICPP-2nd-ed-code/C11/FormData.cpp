//: C11:FormData.cpp {O}
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#include "FormData.h"
#include "../require.h"

DataPair& DataPair::get(istream& in) {
  first.erase(); second.erase();
  string ln;
  getline(in,ln);
  while(ln.find("[{[") == string::npos)
    if(!getline(in, ln)) return *this; // End
  first = ln.substr(3, ln.find("]}]") - 3);
  getline(in, ln); // Throw away [([
  while(getline(in, ln))
    if(ln.find("])]") == string::npos)
      second += ln + string(" ");
    else
      return *this;
}

FormData::FormData(char* fileName) {
  ifstream in(fileName);
  assure(in, fileName);
  require(getline(in, filePath) != 0);
  // Should be start of first line:
  require(filePath.find("///{") == 0); 
  filePath = filePath.substr(strlen("///{"));
  require(getline(in, email) != 0);
   // Should be start of 2nd line:
  require(email.find("From[") == 0);
  int begin = strlen("From[");
  int end = email.find("]");
  int length = end - begin;
  email = email.substr(begin, length);
  // Get the rest of the data:
  DataPair dp(in);
  while(dp) {
    push_back(dp);
    dp.get(in);
  }
} 

string FormData::operator[](const string& key) {
  iterator i = begin();
  while(i != end()) {
    if((*i).first == key)
      return (*i).second;
    i++;
  }
  return string(); // Empty string == not found
}

void FormData::dump(ostream& os) {
  os << "filePath = " << filePath << endl;
  os << "email = " << email << endl;
  for(iterator i = begin(); i != end(); i++)
    os << (*i).first << " = " 
       << (*i).second << endl;
} ///:~
