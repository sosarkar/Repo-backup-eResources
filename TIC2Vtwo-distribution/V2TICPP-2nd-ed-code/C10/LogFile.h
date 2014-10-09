//: C10:LogFile.h
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#ifndef LOGFILE_H
#define LOGFILE_H
#include <fstream>

inline std::ofstream& logfile() {
  static std::ofstream log("Logfile.log");
  return log;
}
#endif // LOGFILE_H ///:~
