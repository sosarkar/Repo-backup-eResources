//: C11:RemoveDuplicates.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Remove duplicate names from a mailing list
#include "readLower.h"
#include "../require.h"
#include <vector>
#include <algorithm>
using namespace std;

int main(int argc, char* argv[]) {
  requireArgs(argc, 2);
  vector<string> names;
  readLower(argv[1], names); 
  long before = names.size();
  // You must sort first for unique() to work:
  sort(names.begin(), names.end()); 
  // Remove adjacent duplicates:
  unique(names.begin(), names.end());
  long removed = before - names.size();
  ofstream out(argv[2]);
  assure(out, argv[2]);
  copy(names.begin(), names.end(),
       ostream_iterator<string>(out,"\n"));
  cout << removed << " names removed" << endl;
} ///:~
