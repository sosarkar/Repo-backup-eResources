//: C11:ExtractUndeliverable.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Find undeliverable names to remove from 
// mailing list from within a mail file 
// containing many messages
#include "../require.h"
#include <cstdio>
#include <string>
#include <set>
using namespace std;

char* start_str[] = {
  "following address",
  "following recipient",
  "following destination",
  "undeliverable to the following",
  "following invalid",
};

char* continue_str[] = {
  "Message-ID",
  "Please reply to",
};

// The in() function allows you to check whether
// a string in this set is part of your argument.
class StringSet {
  char** ss;
  int sz;
public:
  StringSet(char** sa, int sza):ss(sa),sz(sza) {}
  bool in(char* s) {
    for(int i = 0; i < sz; i++)
      if (strstr(s, ss[i]) != 0)
        return true;
    return false;
  }
};

// Calculate array length:
#define ALEN(A) ((sizeof A)/(sizeof *A))

StringSet 
  starts(start_str, ALEN(start_str)),
  continues(continue_str, ALEN(continue_str));

int main(int argc, char* argv[]) {
  requireArgs(argc, 2, 
    "Usage:ExtractUndeliverable infile outfile");
  FILE* infile = fopen(argv[1], "rb");
  FILE* outfile = fopen(argv[2], "w");
  require(infile != 0); require(outfile != 0);
  set<string> names;
  const int sz = 1024;
  char buf[sz];
  while(fgets(buf, sz, infile) != 0) {
    if(starts.in(buf)) {
      puts(buf);
      while(fgets(buf, sz, infile) != 0) {
        if(continues.in(buf)) continue;
        if(strstr(buf, "---") != 0) break;
        const char* delimiters= " \t<>():;,\n\"";
        char* name = strtok(buf, delimiters);
        while(name != 0) {
          if(strstr(name, "@") != 0)
            names.insert(string(name));
          name = strtok(0, delimiters);
        }
      }
    }
  }
  set<string>::iterator i = names.begin();
  while(i != names.end())
    fprintf(outfile, "%s\n", (*i++).c_str());
} ///:~
