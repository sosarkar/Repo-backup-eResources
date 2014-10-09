//: C11:RemoveGroup.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Remove a group of names from a list
#include "readLower.h"
#include "../require.h"
#include <list>
using namespace std;

typedef list<string> Container;

int main(int argc, char* argv[]) {
  requireArgs(argc, 3);
  Container names, removals;
  readLower(argv[1], names);
  readLower(argv[2], removals);
  long original = names.size();
  Container::iterator rmit = removals.begin();
  while(rmit != removals.end())
    names.remove(*rmit++); // Removes all matches
  ofstream out(argv[3]);
  assure(out, argv[3]);
  copy(names.begin(), names.end(),
       ostream_iterator<string>(out,"\n"));
  long removed = original - names.size();
  cout << "On removal list: " << removals.size()
    << "\n Removed: " << removed << endl;  
} ///:~
