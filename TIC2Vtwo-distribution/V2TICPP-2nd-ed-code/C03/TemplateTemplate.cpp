//: C03:TemplateTemplate.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
#include <vector>
#include <iostream>
#include <string>
using namespace std;

// As long as things are simple, 
// this approach works fine:
template<typename C>
void print1(C& c) {
  typename C::iterator it;
  for(it = c.begin(); it != c.end(); it++)
    cout << *it << " ";
  cout << endl;
}

// Template-template argument must 
// be a class; cannot use typename:
template<typename T, template<typename> class C>
void print2(C<T>& c) {
  copy(c.begin(), c.end(), 
    ostream_iterator<T>(cout, " "));
  cout << endl;
}

int main() {
  vector<string> v(5, "Yow!");
  print1(v);
  print2(v);
} ///:~
