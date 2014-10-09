# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C03
# using the Borland compiler
# Note: does not make files that will 
# not compile with this compiler
# Invoke with: make -f Borland.makefile

# Note: this requires the upgrade from
# www.Borland.com for successful compilation!
CPP = Bcc32
CPPFLAGS = -w-inl -w-csu -wnak
OFLAG = -e
.SUFFIXES : .obj .cpp .c
.cpp.obj :
	$(CPP) $(CPPFLAGS) -c $<
.c.obj :
	$(CPP) $(CPPFLAGS) -c $<

all: \
	TypenamedID.exe \
	UsingTypename.exe \
	stringConvTest.exe \
	Getmem.exe \
	TemplateFunctionAddress.exe \
	applyGromit.exe \
	TemplateTemplate.exe \
	applyGromit2.exe \
	Sorted.exe \
	NobloatTest.exe \
	ExplicitInstantiation.exe \
	DelayedInstantiation.exe 

test: all 
	TypenamedID.exe  
	UsingTypename.exe  
	stringConvTest.exe  
	Getmem.exe  
	TemplateFunctionAddress.exe  
	applyGromit.exe  
	TemplateTemplate.exe  
	applyGromit2.exe  
	Sorted.exe  
	NobloatTest.exe  
	ExplicitInstantiation.exe  
	DelayedInstantiation.exe  

bugs: \
	ArraySize.exe 

TypenamedID.exe: TypenamedID.obj 
	$(CPP) $(OFLAG)TypenamedID.exe TypenamedID.obj 

UsingTypename.exe: UsingTypename.obj 
	$(CPP) $(OFLAG)UsingTypename.exe UsingTypename.obj 

stringConvTest.exe: stringConvTest.obj 
	$(CPP) $(OFLAG)stringConvTest.exe stringConvTest.obj 

Getmem.exe: Getmem.obj 
	$(CPP) $(OFLAG)Getmem.exe Getmem.obj 

ArraySize.exe: ArraySize.obj 
	$(CPP) $(OFLAG)ArraySize.exe ArraySize.obj 

TemplateFunctionAddress.exe: TemplateFunctionAddress.obj 
	$(CPP) $(OFLAG)TemplateFunctionAddress.exe TemplateFunctionAddress.obj 

applyGromit.exe: applyGromit.obj 
	$(CPP) $(OFLAG)applyGromit.exe applyGromit.obj 

TemplateTemplate.exe: TemplateTemplate.obj 
	$(CPP) $(OFLAG)TemplateTemplate.exe TemplateTemplate.obj 

applyGromit2.exe: applyGromit2.obj 
	$(CPP) $(OFLAG)applyGromit2.exe applyGromit2.obj 

Sorted.exe: Sorted.obj 
	$(CPP) $(OFLAG)Sorted.exe Sorted.obj 

NobloatTest.exe: NobloatTest.obj 
	$(CPP) $(OFLAG)NobloatTest.exe NobloatTest.obj 

ExplicitInstantiation.exe: ExplicitInstantiation.obj 
	$(CPP) $(OFLAG)ExplicitInstantiation.exe ExplicitInstantiation.obj 

DelayedInstantiation.exe: DelayedInstantiation.obj 
	$(CPP) $(OFLAG)DelayedInstantiation.exe DelayedInstantiation.obj 


TypenamedID.obj: TypenamedID.cpp 
UsingTypename.obj: UsingTypename.cpp 
stringConvTest.obj: stringConvTest.cpp stringConv.h 
Getmem.obj: Getmem.cpp Getmem.h 
ArraySize.obj: ArraySize.cpp ..\arraySize.h 
TemplateFunctionAddress.obj: TemplateFunctionAddress.cpp 
applyGromit.obj: applyGromit.cpp Gromit.h applySequence.h 
TemplateTemplate.obj: TemplateTemplate.cpp 
applyGromit2.obj: applyGromit2.cpp Gromit.h applyMember.h 
Sorted.obj: Sorted.cpp Sorted.h Urand.h ..\arraySize.h 
NobloatTest.obj: NobloatTest.cpp Nobloat.h ..\require.h 
ExplicitInstantiation.obj: ExplicitInstantiation.cpp Urand.h Sorted.h 
DelayedInstantiation.obj: DelayedInstantiation.cpp 

