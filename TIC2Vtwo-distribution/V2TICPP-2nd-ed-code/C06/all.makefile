# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C06
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
	MultipleInheritance1.exe \
	MultipleInheritance2.exe \
	MultipleInheritance3.exe \
	MultipleInheritance4.exe \
	Overhead.exe \
	Mithis.exe \
	Persist1.exe \
	Persist2.exe \
	Paste.exe 

test: all 
	MultipleInheritance1.exe  
	MultipleInheritance2.exe  
	MultipleInheritance3.exe  
	MultipleInheritance4.exe  
	Overhead.exe  
	Mithis.exe  
	Persist1.exe  
	Persist2.exe  
	Paste.exe  

bugs: 
	@echo No compiler bugs in this directory!

MultipleInheritance1.exe: MultipleInheritance1.obj 
	$(CPP) $(OFLAG)MultipleInheritance1.exe MultipleInheritance1.obj 

MultipleInheritance2.exe: MultipleInheritance2.obj 
	$(CPP) $(OFLAG)MultipleInheritance2.exe MultipleInheritance2.obj 

MultipleInheritance3.exe: MultipleInheritance3.obj 
	$(CPP) $(OFLAG)MultipleInheritance3.exe MultipleInheritance3.obj 

MultipleInheritance4.exe: MultipleInheritance4.obj 
	$(CPP) $(OFLAG)MultipleInheritance4.exe MultipleInheritance4.obj 

Overhead.exe: Overhead.obj 
	$(CPP) $(OFLAG)Overhead.exe Overhead.obj 

Mithis.exe: Mithis.obj 
	$(CPP) $(OFLAG)Mithis.exe Mithis.obj 

Persist1.exe: Persist1.obj 
	$(CPP) $(OFLAG)Persist1.exe Persist1.obj 

Persist2.exe: Persist2.obj 
	$(CPP) $(OFLAG)Persist2.exe Persist2.obj 

Paste.exe: Paste.obj Vendor.obj 
	$(CPP) $(OFLAG)Paste.exe Paste.obj Vendor.obj 


MultipleInheritance1.obj: MultipleInheritance1.cpp ..\purge.h 
MultipleInheritance2.obj: MultipleInheritance2.cpp ..\purge.h 
MultipleInheritance3.obj: MultipleInheritance3.cpp ..\purge.h 
MultipleInheritance4.obj: MultipleInheritance4.cpp ..\purge.h 
Overhead.obj: Overhead.cpp 
Mithis.obj: Mithis.cpp 
Persist1.obj: Persist1.cpp ..\require.h 
Persist2.obj: Persist2.cpp ..\require.h 
Vendor.obj: Vendor.cpp Vendor.h 
Paste.obj: Paste.cpp Vendor.h 

