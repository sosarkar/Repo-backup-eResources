//: C11:ExtractCode.cpp
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// Automatically extracts code files from
// ASCII text of this book.
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <map>
#include <set>
#include <algorithm>
using namespace std;

string copyright =
  "// From Thinking in C++, 2nd Edition\n"
  "// Available at http://www.BruceEckel.com\n"
  "// (c) Bruce Eckel 1999\n"
  "// Copyright notice in Copyright.txt\n";

string usage =
  " Usage:ExtractCode source\n"
  "where source is the ASCII file containing \n"
  "the embedded tagged sourcefiles. The ASCII \n"
  "file must also contain an embedded compiler\n"
  "configuration file called CompileDB.txt \n"
  "See Thinking in C++, 2nd ed. for details\n";

// Tool to remove the white space from both ends:
string trim(const string& s) {
  if(s.length() == 0)
    return s;
  int b = s.find_first_not_of(" \t");
  int e = s.find_last_not_of(" \t");
  if(b == -1) // No non-spaces
    return "";
  return string(s, b, e - b + 1);
}

// Manage all the error messaging:
void error(string problem, string message) {
  static const string border(
  "-----------------------------------------\n");
  class ErrReport {
    int count;
    string fname;
  public:
    ofstream errs;
    ErrReport(char* fn = "ExtractCodeErrors.txt") 
      : count(0),fname(fn),errs(fname.c_str()) {}
    void operator++(int) { count++; }
    ~ErrReport() {
      errs.close();
      // Dump error messages to console
      ifstream in(fname.c_str());
      cerr << in.rdbuf() << endl;
      cerr << count << " Errors found" << endl;
      cerr << "Messages in " << fname << endl;
    }
  };
  // Created on first call to this function;
  // Destructor reports total errors:
  static ErrReport report;
  report++;
  report.errs << border << message << endl
    << "Problem spot: " << problem << endl;
}

///// OS-specific code, hidden inside a class:
#ifdef __GNUC__  // For gcc under Linux/Unix
#include <unistd.h>
#include <sys/stat.h>
#include <stdlib.h>
class OSDirControl {
public:
  static string getCurrentDir() {
    char path[PATH_MAX];
    getcwd(path, PATH_MAX);
    return string(path);
  }
  static void makeDir(string dir) {
    mkdir(dir.c_str(), 0777);
  }
  static void changeDir(string dir) {
    chdir(dir.c_str());
  }
};
#else // For Dos/Windows:
#include <direct.h>
class OSDirControl {
public:
  static string getCurrentDir() {
    char path[_MAX_PATH];
    getcwd(path, _MAX_PATH);
    return string(path);
  }
  static void makeDir(string dir) {
    mkdir(dir.c_str());
  }
  static void changeDir(string dir) {
    chdir(dir.c_str());
  }
};
#endif ///// End of OS-specific code

class PushDirectory {
  string oldpath;
public:
  PushDirectory(string path);
  ~PushDirectory() {
    OSDirControl::changeDir(oldpath);
  }
  void pushOneDir(string dir) {
    OSDirControl::makeDir(dir);
    OSDirControl::changeDir(dir);
  }
};

PushDirectory::PushDirectory(string path) {
  oldpath = OSDirControl::getCurrentDir();
  while(path.length() != 0) {
    int colon = path.find(':');
    if(colon != string::npos) {
      pushOneDir(path.substr(0, colon));
      path = path.substr(colon + 1);
    } else {
      pushOneDir(path);
      return;
    }
  }
}

//--------------- Manage code files -------------
// A CodeFile object knows everything about a
// particular code file, including contents, path
// information, how to compile, link, and test 
// it, and which compilers it won't compile with.
enum TType {header, object, executable, none};

class CodeFile {
  TType _targetType;
  string _rawName, // Original name from input
    _path, // Where the source file lives
    _file, // Name of the source file
    _base, // Name without extension
    _tname, // Target name
    _testArgs; // Command-line arguments
  vector<string>
    lines, // Contains the file
    _compile, // Compile dependencies
    _link; // How to link the executable
  set<string>
    _noBuild; // Compilers it won't compile with
  bool writeTags; // Whether to write the markers
  // Initial makefile processing for the file:
  void target(const string& s);
  // For quoted #include headers:
  void headerLine(const string& s);
  // For special dependency tag marks:
  void dependLine(const string& s);
public:
  CodeFile(istream& in, string& s);
  const string& rawName() { return _rawName; }
  const string& path() { return _path; }
  const string& file() { return _file; }
  const string& base() { return _base; }
  const string& targetName() { return _tname; }
  TType targetType() { return _targetType; }
  const vector<string>& compile() {
    return _compile;
  }
  const vector<string>& link() {
    return _link;
  }
  const set<string>& noBuild() {
    return _noBuild;
  }
  const string& testArgs() { return _testArgs; }
  // Add a compiler it won't compile with:
  void addFailure(const string& failure) {
    _noBuild.insert(failure);
  }
  bool compilesOK(string compiler) {
    return _noBuild.count(compiler) == 0;
  }
  friend ostream&
  operator<<(ostream& os, const CodeFile& cf) {
    copy(cf.lines.begin(), cf.lines.end(),
      ostream_iterator<string>(os, ""));
    return os;
  }
  void write() {
    PushDirectory pd(_path);
    ofstream listing(_file.c_str());
    listing << *this;  // Write the file
  }
  void dumpInfo(ostream& os);
};

void CodeFile::target(const string& s) {
  // Find the base name of the file (without
  // the extension):
  int lastDot = _file.find_last_of('.');
  if(lastDot == string::npos) {
    error(s, "Missing extension");
    exit(1);
  }
  _base = _file.substr(0, lastDot);
  // Determine the type of file and target:
  if(s.find(".h") != string::npos ||
     s.find(".H") != string::npos) {
    _targetType = header;
    _tname = _file;
    return;
  }
  if(s.find(".txt") != string::npos
      || s.find(".TXT") != string::npos
      || s.find(".dat") != string::npos
      || s.find(".DAT") != string::npos) {
    // Text file, not involved in make
    _targetType = none;
    _tname = _file;
    return;
  }
  // C++ objs/exes depend on their own source:
  _compile.push_back(_file);
  if(s.find("{O}") != string::npos) {
    // Don't build an executable from this file
    _targetType = object;
    _tname = _base;
  } else {
    _targetType = executable;
    _tname = _base;
    // The exe depends on its own object file:
    _link.push_back(_base);
  }
}

void CodeFile::headerLine(const string& s) {
  int start = s.find('\"');
  int end = s.find('\"', start + 1);
  int len = end - start - 1;
  _compile.push_back(s.substr(start + 1, len));
}

void CodeFile::dependLine(const string& s) {
  const string linktag("//{L} ");
  string deps = trim(s.substr(linktag.length()));
  while(true) {
    int end = deps.find(' ');
    string dep = deps.substr(0, end);
    _link.push_back(dep);
    if(end == string::npos) // Last one
      break;
    else
      deps = trim(deps.substr(end));
  }
}

CodeFile::CodeFile(istream& in, string& s) {
  // If false, don't write begin & end tags:
  writeTags = (s[3] != '!');
  // Assume a space after the starting tag:
  _file = s.substr(s.find(' ') + 1);
  // There will always be at least one colon:
  int lastColon = _file.find_last_of(':');
  if(lastColon == string::npos) {
    error(s, "Missing path");
    lastColon = 0; // Recover from error
  }
  _rawName = trim(_file);
  _path = _file.substr(0, lastColon);
  _file = _file.substr(lastColon + 1);
  _file =_file.substr(0,_file.find_last_of(' '));
  cout << "path = [" << _path << "] "
    << "file = [" << _file << "]" << endl;
  target(s); // Determine target type
  if(writeTags){
    lines.push_back(s + '\n');
    lines.push_back(copyright);
  }
  string s2;
  while(getline(in, s2)) {
    // Look for specified link dependencies:
    if(s2.find("//{L}") == 0) // 0: Start of line
      dependLine(s2);
    // Look for command-line arguments for test:
    if(s2.find("//{T}") == 0) // 0: Start of line
      _testArgs = s2.substr(strlen("//{T}") + 1);
    // Look for quoted includes:
    if(s2.find("#include \"") != string::npos) {
      headerLine(s2); // Grab makefile info
    }
    // Look for end marker:
    if(s2.find("//" "/:~") != string::npos) {
      if(writeTags)
        lines.push_back(s2 + '\n');
      return;  // Found the end
    }
    // Make sure you don't see another start:
    if(s2.find("//" ":") != string::npos
       || s2.find("/*" ":") != string::npos) {
      error(s, "Error: new file started before"
        " previous file concluded");
      return;
    }
    // Write ordinary line:
    lines.push_back(s2 + '\n');
  }
}

void CodeFile::dumpInfo(ostream& os) {
  os << _path << ':' << _file << endl;
  os << "target: " << _tname << endl;
  os << "compile: " << endl;
  for(int i = 0; i < _compile.size(); i++)
    os << '\t' << _compile[i] << endl;
  os << "link: " << endl;
  for(int i = 0; i < _link.size(); i++)
    os << '\t' << _link[i] << endl;
  if(_noBuild.size() != 0) {
    os << "Won't build with: " << endl;
    copy(_noBuild.begin(), _noBuild.end(),
      ostream_iterator<string>(os, "\n"));
  }
}

//--------- Manage compiler information ---------
class CompilerData {
  // Information about each compiler:
  vector<string> rules; // Makefile rules
  set<string> fails; // Non-compiling files
  string objExtension; // File name extensions
  string exeExtension;
  // For OS-specific activities:
  bool _dos, _unix;
  // Store the information for all the compilers:
  static map<string, CompilerData> compilerInfo;
  static set<string> _compilerNames;
public:
  CompilerData() : _dos(false), _unix(false) {}
  // Read database of various compiler's 
  // information and failure listings for 
  // compiling the book files:
  static void readDB(istream& in);
  // For enumerating all the compiler names:
  static set<string>& compilerNames() {
    return _compilerNames;
  }
  // Tell this CodeFile which compilers
  // don't work with it:
  static void addFailures(CodeFile& cf);
  // Produce the proper object file name
  // extension for this compiler:
  static string obj(string compiler);
  // Produce the proper executable file name
  // extension for this compiler:
  static string exe(string compiler);
  // For inserting a particular compiler's
  // rules into a makefile:
  static void 
  writeRules(string compiler, ostream& os);
  // Change forward slashes to backward 
  // slashes if necessary:
  static string 
  adjustPath(string compiler, string path);
  // So you can ask if it's a Unix compiler:
  static bool isUnix(string compiler) {
    return compilerInfo[compiler]._unix;
  }
  // So you can ask if it's a dos compiler:
  static bool isDos(string compiler) {
    return compilerInfo[compiler]._dos;
  }
  // Display information (for debugging):
  static void dump(ostream& os = cout);
};

// Static initialization:
map<string,CompilerData> 
  CompilerData::compilerInfo;
set<string> CompilerData::_compilerNames;

void CompilerData::readDB(istream& in) {
  string compiler; // Name of current compiler
  string s;
  while(getline(in, s)) {
    if(s.find("#//" "/:~") == 0)
      return; // Found end tag
    s = trim(s);
    if(s.length() == 0) continue; // Blank line
    if(s[0] == '#') continue; // Comment
    if(s[0] == '{') { // Different compiler
      compiler = s.substr(0, s.find('}'));
      compiler = trim(compiler.substr(1));
      if(compiler.length() != 0)
        _compilerNames.insert(compiler);
      continue; // Changed compiler name
    }
    if(s[0] == '(') { // Object file extension
      string obj = s.substr(1);
      obj = trim(obj.substr(0, obj.find(')')));
      compilerInfo[compiler].objExtension =obj;
      continue;
    }
    if(s[0] == '[') { // Executable extension
      string exe = s.substr(1);
      exe = trim(exe.substr(0, exe.find(']')));
      compilerInfo[compiler].exeExtension =exe;
      continue;
    }
    if(s[0] == '&') { // Special directive
      if(s.find("dos") != string::npos)
        compilerInfo[compiler]._dos = true;
      else if(s.find("unix") != string::npos)
        compilerInfo[compiler]._unix = true;
      else
        error("Compiler Information Database", 
          "unknown special directive: " + s);
      continue;
    }
    if(s[0] == '@') { // Makefile rule
      string rule(s.substr(1)); // Remove the @
      if(rule[0] == ' ') // Space means tab
        rule = '\t' + trim(rule);
      compilerInfo[compiler].rules
        .push_back(rule); 
      continue;
    }
    // Otherwise, it's a failure line:
    compilerInfo[compiler].fails.insert(s);
  }
  error("CompileDB.txt","Missing end tag");
}

void CompilerData::addFailures(CodeFile& cf) {
  set<string>::iterator it = 
    _compilerNames.begin();
  while(it != _compilerNames.end()) {
    if(compilerInfo[*it]
       .fails.count(cf.rawName()) != 0)
      cf.addFailure(*it);
    it++;
  }
}

string CompilerData::obj(string compiler) {
  if(compilerInfo.count(compiler) != 0) {
    string ext(
      compilerInfo[compiler].objExtension);
    if(ext.length() != 0)
      ext = '.' + ext; // Use '.' if it exists
    return ext;
  } else
    return "No such compiler information";
}

string CompilerData::exe(string compiler) {
  if(compilerInfo.count(compiler) != 0) {
    string ext(
      compilerInfo[compiler].exeExtension);
    if(ext.length() != 0)
      ext = '.' + ext; // Use '.' if it exists
    return ext;
  } else
    return "No such compiler information";
}

void CompilerData::writeRules(
  string compiler, ostream& os) {
  if(_compilerNames.count(compiler) == 0) {
    os << "No info on this compiler" << endl;
    return;
  }
  vector<string>& r = 
    compilerInfo[compiler].rules;
  copy(r.begin(), r.end(), 
    ostream_iterator<string>(os, "\n"));
}

string CompilerData::adjustPath(
  string compiler, string path) {
  // Use STL replace() algorithm:
  if(compilerInfo[compiler]._dos)
    replace(path.begin(), path.end(), '/', '\\');
  return path;
}

void CompilerData::dump(ostream& os) {
  ostream_iterator<string> out(os, "\n");
  *out++ = "Compiler Names:";
  copy(_compilerNames.begin(), 
    _compilerNames.end(), out);
  map<string, CompilerData>::iterator compIt;
  for(compIt = compilerInfo.begin(); 
    compIt != compilerInfo.end(); compIt++) {
    os << "******************************\n";
    os << "Compiler: [" << (*compIt).first <<
      "]" << endl;
    CompilerData& cd = (*compIt).second;
    os << "objExtension: " << cd.objExtension
      << "\nexeExtension: " << cd.exeExtension 
      << endl;
    *out++ = "Rules:";
    copy(cd.rules.begin(), cd.rules.end(), out);
    cout << "Won't compile with: " << endl;
    copy(cd.fails.begin(), cd.fails.end(), out);
  }
}

// ---------- Manage makefile creation ----------
// Create the makefile for this directory, based
// on each of the CodeFile entries:
class Makefile {
  vector<CodeFile> codeFiles;
  // All the different paths 
  // (for creating the Master makefile):
  static set<string> paths;
  void 
  createMakefile(string compiler, string path);
public:
  Makefile() {}
  void addEntry(CodeFile& cf) {
    paths.insert(cf.path()); // Record all paths
    // Tell it what compilers don't work with it:
    CompilerData::addFailures(cf);
    codeFiles.push_back(cf);
  }
  // Write the makefile for each compiler:
  void writeMakefiles(string path);
  // Create the master makefile:
  static void writeMaster(string flag = "");
};

// Static initialization:
set<string> Makefile::paths;

void Makefile::writeMakefiles(string path) {
  if(trim(path).length() == 0)
    return; // No makefiles in root directory
  PushDirectory pd(path);
  set<string>& compilers = 
    CompilerData::compilerNames();
  set<string>::iterator it = compilers.begin();
  while(it != compilers.end())
    createMakefile(*it++, path);
}

void Makefile::createMakefile(
  string compiler, string path) {
  string // File name extensions:
    exe(CompilerData::exe(compiler)),
    obj(CompilerData::obj(compiler));
  string filename(compiler + ".makefile");
  ofstream makefile(filename.c_str());
  makefile << 
    "# From Thinking in C++, 2nd Edition\n"
    "# At http://www.BruceEckel.com\n"
    "# (c) Bruce Eckel 1999\n"
    "# Copyright notice in Copyright.txt\n"
    "# Automatically-generated MAKEFILE \n"
    "# For examples in directory "+ path + "\n"
    "# using the " + compiler + " compiler\n"
    "# Note: does not make files that will \n"
    "# not compile with this compiler\n"
    "# Invoke with: make -f " 
    + compiler + ".makefile\n"
    << endl;
  CompilerData::writeRules(compiler, makefile);
  vector<string> makeAll, makeTest, 
    makeBugs, makeDeps, linkCmd;
  // Write the "all" dependencies:
  makeAll.push_back("all: ");
  makeTest.push_back("test: all ");
  makeBugs.push_back("bugs: ");
  string line;
  vector<CodeFile>::iterator it;
  for(it = codeFiles.begin(); 
    it != codeFiles.end(); it++) {
    CodeFile& cf = *it;
    if(cf.targetType() == executable) {
      line = "\\\n\t"+cf.targetName()+ exe + ' ';
      if(cf.compilesOK(compiler) == false) {
        makeBugs.push_back(
          CompilerData::adjustPath(
            compiler,line));
      } else {
        makeAll.push_back(
          CompilerData::adjustPath(
            compiler,line));
        line = "\\\n\t" + cf.targetName() + exe +
          ' ' + cf.testArgs() + ' ';
        makeTest.push_back(
          CompilerData::adjustPath(
            compiler,line));
      }
      // Create the link command:
      int linkdeps = cf.link().size();
      string linklist;
      for(int i = 0; i < linkdeps; i++)
        linklist += 
          cf.link().operator[](i) + obj + " ";
      line = cf.targetName() + exe + ": "
        + linklist + "\n\t$(CPP) $(OFLAG)"
        + cf.targetName() + exe
        + ' ' + linklist + "\n\n";
      linkCmd.push_back(
        CompilerData::adjustPath(compiler,line));
    }
    // Create dependencies
    if(cf.targetType() == executable
      || cf.targetType() == object) {
      int compiledeps = cf.compile().size();
      string objlist(cf.base() + obj + ": ");
      for(int i = 0; i < compiledeps; i++)
        objlist += 
          cf.compile().operator[](i) + " ";
      makeDeps.push_back(
        CompilerData::adjustPath(
          compiler, objlist) +"\n");
    }      
  }
  ostream_iterator<string> mkos(makefile, "");
  *mkos++ = "\n";
  // The "all" target:
  copy(makeAll.begin(), makeAll.end(), mkos);
  *mkos++ = "\n\n";
  // Remove continuation marks from makeTest:
  vector<string>::iterator si = makeTest.begin();
  int bsl;
  for(; si != makeTest.end(); si++)
    if((bsl= (*si).find("\\\n")) != string::npos)
      (*si).erase(bsl, strlen("\\"));
  // Now print the "test" target:
  copy(makeTest.begin(), makeTest.end(), mkos);
  *mkos++ = "\n\n";
  // The "bugs" target:
  copy(makeBugs.begin(), makeBugs.end(), mkos);
  if(makeBugs.size() == 1)
    *mkos++ = "\n\t@echo No compiler bugs in "
      "this directory!";
  *mkos++ = "\n\n";
  // Link commands:
  copy(linkCmd.begin(), linkCmd.end(), mkos);
  *mkos++ = "\n";
  // Demendencies:
  copy(makeDeps.begin(), makeDeps.end(), mkos);
  *mkos++ = "\n";
}

void Makefile::writeMaster(string flag) {
  string filename = "makefile";
  if(flag.length() != 0)
    filename += '.' + flag;
  ofstream makefile(filename.c_str());
  makefile << "# Master makefile for "
    "Thinking in C++, 2nd Ed. by Bruce Eckel\n"
    "# at http://www.BruceEckel.com\n"
    "# Compiles all the code in the book\n"
    "# Copyright notice in Copyright.txt\n\n"
    "help: \n"
    "\t@echo To compile all programs from \n"
    "\t@echo Thinking in C++, 2nd Ed., type\n"
    "\t@echo one of the following commands,\n"
    "\t@echo according to your compiler:\n";
  set<string>& n = CompilerData::compilerNames();
  set<string>::iterator nit;
  for(nit = n.begin(); nit != n.end(); nit++)
    makefile << 
      string("\t@echo make " + *nit + "\n");
  makefile << endl;
  // Make for each compiler:
  for(nit = n.begin(); nit != n.end(); nit++) {
    makefile << *nit << ":\n";
    for(set<string>::iterator it = paths.begin();
      it != paths.end(); it++) {
      // Ignore the root directory:
      if((*it).length() == 0) continue;
      makefile << "\tcd " << *it;
      // Different commands for unix vs. dos:
      if(CompilerData::isUnix(*nit))
        makefile << "; ";
      else
        makefile << "\n\t";
      makefile << "make -f " << *nit 
        << ".makefile";
      if(flag.length() != 0) {
        makefile << ' ';
        if(flag == "bugs")
          makefile << "-i ";
        makefile << flag;
      }
      makefile << "\n";
      if(CompilerData::isUnix(*nit) == false)
        makefile << "\tcd ..\n";
    }
    makefile << endl;
  }
}

int main(int argc, char* argv[]) {
  if(argc < 2) {
    error("Command line error", usage);
    exit(1);
  }
  // For development & testing, leave off notice:
  if(argc == 3)
    if(string(argv[2]) == "-nocopyright")
      copyright = "";
  // Open the input file to read the compiler
  // information database:
  ifstream in(argv[1]);
  if(!in) {
    error(string("can't open ") + argv[1],usage);
    exit(1);
  }
  string s;
  while(getline(in, s)) {
    // Break up the strings to prevent a match when
    // this code is seen by this program:
    if(s.find("#:" " :CompileDB.txt") 
      != string::npos) {
      // Parse the compiler information database:
      CompilerData::readDB(in);
      break; // Out of while loop
    }
  }
  if(in.eof())
    error("CompileDB.txt", "Can't find data");
  in.seekg(0, ios::beg); // Back to beginning
  map<string, Makefile> makeFiles;
  while(getline(in, s)) {
    // Look for tag at beginning of line:
    if(s.find("//" ":") == 0
       || s.find("/*" ":") == 0
       || s.find("#" ":") == 0) {
      CodeFile cf(in, s);
      cf.write();  // Tell it to write itself
      makeFiles[cf.path()].addEntry(cf);
    }
  }
  // Write all the makefiles, telling each
  // the path where it belongs:
  map<string, Makefile>::iterator mfi;
  for(mfi = makeFiles.begin(); 
    mfi != makeFiles.end(); mfi++)
    (*mfi).second.writeMakefiles((*mfi).first);
  // Create the master makefile:
  Makefile::writeMaster();
  // Write the makefile that tries the bug files:
  Makefile::writeMaster("bugs");
} ///:~
