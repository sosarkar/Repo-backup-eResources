# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C0A
# using the all compiler
# Note: does not make files that will 
# not compile with this compiler
# Invoke with: make -f all.makefile

.SUFFIXES : .obj .cpp .c
.cpp.obj :
	$(CPP) $(CPPFLAGS) -c $<
.c.obj :
	$(CPP) $(CPPFLAGS) -c $<

all: \
	Dummy.exe 

test: all 
	Dummy.exe  

bugs: 
	@echo No compiler bugs in this directory!

Dummy.exe: Dummy.obj 
	$(CPP) $(OFLAG)Dummy.exe Dummy.obj 


Dummy.obj: Dummy.cpp 

