# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C09
# using the gcc compiler
# Note: does not make files that will 
# not compile with this compiler
# Invoke with: make -f gcc.makefile

CPP = g++
OFLAG = -o
.SUFFIXES : .o .cpp .c
.cpp.o :
	$(CPP) $(CPPFLAGS) -c $<
.c.o :
	$(CPP) $(CPPFLAGS) -c $<

all: \
	BikeTest 

test: all 
	BikeTest  

bugs: 
	@echo No compiler bugs in this directory!

BikeTest: BikeTest.o Bicycle.o 
	$(CPP) $(OFLAG)BikeTest BikeTest.o Bicycle.o 


Bicycle.o: Bicycle.cpp Bicycle.h 
BikeTest.o: BikeTest.cpp Bicycle.h 

