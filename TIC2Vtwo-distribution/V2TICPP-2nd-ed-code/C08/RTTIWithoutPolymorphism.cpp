//: C08:RTTIWithoutPolymorphism.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#include <cassert>
#include <typeinfo>
using namespace std;

class X {
 int i; 
public:
  // ...
};

class Y : public X { 
  int j;
public:
  // ...
};

int main() {
  X* xp = new Y;
  assert(typeid(*xp) == typeid(X));
  assert(typeid(*xp) != typeid(Y));
} ///:~
