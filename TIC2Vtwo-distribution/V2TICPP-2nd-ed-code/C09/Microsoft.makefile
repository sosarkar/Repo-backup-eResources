# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C09
# using the Microsoft compiler
# Note: does not make files that will 
# not compile with this compiler
# Invoke with: make -f Microsoft.makefile

# Note: this requires the service Pack 3 from
# www.Microsoft.com for successful compilation!
CPP = cl
CPPFLAGS = -GX -GR
OFLAG = -o
.SUFFIXES : .obj .cpp .c
.cpp.obj :
	$(CPP) $(CPPFLAGS) -c $<
.c.obj :
	$(CPP) $(CPPFLAGS) -c $<

all: \
	BikeTest.exe 

test: all 
	BikeTest.exe  

bugs: 
	@echo No compiler bugs in this directory!

BikeTest.exe: BikeTest.obj Bicycle.obj 
	$(CPP) $(OFLAG)BikeTest.exe BikeTest.obj Bicycle.obj 


Bicycle.obj: Bicycle.cpp Bicycle.h 
BikeTest.obj: BikeTest.cpp Bicycle.h 

