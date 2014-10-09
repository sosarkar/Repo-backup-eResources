//: C11:DataToSpreadsheet.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
//{L} FormData
#include "FormData.h"
#include "../require.h"
#include <string>
using namespace std;

string delimiter("\t");

int main(int argc, char* argv[]) {
  for(int i = 1; i < argc; i++) {
    FormData fd(argv[i]);
    cout << fd.email << delimiter;
    FormData::iterator i;
    for(i = fd.begin(); i != fd.end(); i++)
      if((*i).first != "workshop-suggestions")
        cout << (*i).second << delimiter;
    cout << endl;
  }
} ///:~
