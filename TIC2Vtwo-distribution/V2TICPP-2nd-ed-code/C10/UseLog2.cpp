//: C10:UseLog2.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
//{L} UseLog1 LogFile
#include "UseLog1.h"
#include "LogFile.h"
using namespace std;

void g() {
  logfile() << __FILE__ << endl;
} 

int main() {
  f();
  g();
} ///:~
