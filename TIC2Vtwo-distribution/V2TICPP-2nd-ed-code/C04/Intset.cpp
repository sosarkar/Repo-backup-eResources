//: C04:Intset.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Simple use of STL set
#include <set>
#include <iostream>
using namespace std;

int main() {
 set<int> intset;
  for(int i = 0; i < 25; i++)
    for(int j = 0; j < 10; j++)
      // Try to insert multiple copies:
      intset.insert(j);
  // Print to output:
 copy(intset.begin(), intset.end(),
   ostream_iterator<int>(cout, "\n"));
} ///:~
