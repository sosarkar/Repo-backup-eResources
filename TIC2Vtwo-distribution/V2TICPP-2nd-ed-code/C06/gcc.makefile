# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C06
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
	MultipleInheritance1 \
	MultipleInheritance2 \
	MultipleInheritance3 \
	MultipleInheritance4 \
	Overhead \
	Mithis \
	Persist1 \
	Persist2 \
	Paste 

test: all 
	MultipleInheritance1  
	MultipleInheritance2  
	MultipleInheritance3  
	MultipleInheritance4  
	Overhead  
	Mithis  
	Persist1  
	Persist2  
	Paste  

bugs: 
	@echo No compiler bugs in this directory!

MultipleInheritance1: MultipleInheritance1.o 
	$(CPP) $(OFLAG)MultipleInheritance1 MultipleInheritance1.o 

MultipleInheritance2: MultipleInheritance2.o 
	$(CPP) $(OFLAG)MultipleInheritance2 MultipleInheritance2.o 

MultipleInheritance3: MultipleInheritance3.o 
	$(CPP) $(OFLAG)MultipleInheritance3 MultipleInheritance3.o 

MultipleInheritance4: MultipleInheritance4.o 
	$(CPP) $(OFLAG)MultipleInheritance4 MultipleInheritance4.o 

Overhead: Overhead.o 
	$(CPP) $(OFLAG)Overhead Overhead.o 

Mithis: Mithis.o 
	$(CPP) $(OFLAG)Mithis Mithis.o 

Persist1: Persist1.o 
	$(CPP) $(OFLAG)Persist1 Persist1.o 

Persist2: Persist2.o 
	$(CPP) $(OFLAG)Persist2 Persist2.o 

Paste: Paste.o Vendor.o 
	$(CPP) $(OFLAG)Paste Paste.o Vendor.o 


MultipleInheritance1.o: MultipleInheritance1.cpp ../purge.h 
MultipleInheritance2.o: MultipleInheritance2.cpp ../purge.h 
MultipleInheritance3.o: MultipleInheritance3.cpp ../purge.h 
MultipleInheritance4.o: MultipleInheritance4.cpp ../purge.h 
Overhead.o: Overhead.cpp 
Mithis.o: Mithis.cpp 
Persist1.o: Persist1.cpp ../require.h 
Persist2.o: Persist2.cpp ../require.h 
Vendor.o: Vendor.cpp Vendor.h 
Paste.o: Paste.cpp Vendor.h 

