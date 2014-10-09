//: C04:FileEditor.h
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// File editor tool
#ifndef FILEEDITOR_H
#define FILEEDITOR_H
#include <string>
#include <vector>
#include <iostream>

class FileEditor : 
public std::vector<std::string> {
public:
  FileEditor(char* filename);
  void write(std::ostream& out = std::cout);
};
#endif // FILEEDITOR_H ///:~
