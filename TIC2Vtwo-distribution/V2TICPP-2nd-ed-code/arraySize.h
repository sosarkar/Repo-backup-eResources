//: :arraySize.h
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Uses template type induction to 
// discover the size of an array
#ifndef ARRAYSIZE_H
#define ARRAYSIZE_H

template<typename T, int size>
int asz(T (&)[size]) { return size; }

#endif // ARRAYSIZE_H ///:~
