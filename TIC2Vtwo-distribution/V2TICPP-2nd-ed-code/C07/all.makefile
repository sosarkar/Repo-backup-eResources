# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C07
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
	Nonlocal.exe \
	Except.exe \
	Terminator.exe \
	FunctionTryBlock.exe \
	Cleanup.exe \
	Nudep.exe \
	Wrapped.exe \
	Autoexcp.exe \
	Basexcpt.exe \
	Catchref.exe 

test: all 
	Nonlocal.exe  
	Except.exe  
	Terminator.exe  
	FunctionTryBlock.exe  
	Cleanup.exe  
	Nudep.exe  
	Wrapped.exe  
	Autoexcp.exe  
	Basexcpt.exe  
	Catchref.exe  

bugs: 
	@echo No compiler bugs in this directory!

Nonlocal.exe: Nonlocal.obj 
	$(CPP) $(OFLAG)Nonlocal.exe Nonlocal.obj 

Except.exe: Except.obj 
	$(CPP) $(OFLAG)Except.exe Except.obj 

Terminator.exe: Terminator.obj 
	$(CPP) $(OFLAG)Terminator.exe Terminator.obj 

FunctionTryBlock.exe: FunctionTryBlock.obj 
	$(CPP) $(OFLAG)FunctionTryBlock.exe FunctionTryBlock.obj 

Cleanup.exe: Cleanup.obj 
	$(CPP) $(OFLAG)Cleanup.exe Cleanup.obj 

Nudep.exe: Nudep.obj 
	$(CPP) $(OFLAG)Nudep.exe Nudep.obj 

Wrapped.exe: Wrapped.obj 
	$(CPP) $(OFLAG)Wrapped.exe Wrapped.obj 

Autoexcp.exe: Autoexcp.obj 
	$(CPP) $(OFLAG)Autoexcp.exe Autoexcp.obj 

Basexcpt.exe: Basexcpt.obj 
	$(CPP) $(OFLAG)Basexcpt.exe Basexcpt.obj 

Catchref.exe: Catchref.obj 
	$(CPP) $(OFLAG)Catchref.exe Catchref.obj 


Nonlocal.obj: Nonlocal.cpp 
Except.obj: Except.cpp 
Terminator.obj: Terminator.cpp 
FunctionTryBlock.obj: FunctionTryBlock.cpp 
Cleanup.obj: Cleanup.cpp 
Nudep.obj: Nudep.cpp 
Wrapped.obj: Wrapped.cpp 
Autoexcp.obj: Autoexcp.cpp 
Basexcpt.obj: Basexcpt.cpp 
Catchref.obj: Catchref.cpp 

