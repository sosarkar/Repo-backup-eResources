# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C05
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
	FuncObject.exe \
	FunctionObjects.exe \
	Binder1.exe \
	Binder2.exe \
	Binder3.exe \
	Binder4.exe \
	RandGenTest.exe \
	MemFun1.exe \
	MemFun2.exe \
	FindBlanks.exe \
	MemFun3.exe \
	NoCompose.exe \
	FillGenerateTest.exe \
	Counting.exe \
	Manipulations.exe \
	Comparison.exe \
	SortTest.exe \
	SortedSearchTest.exe \
	MergeTest.exe \
	SetOperations.exe \
	ForEach.exe \
	Transform.exe \
	CalcInventory.exe \
	TransformNames.exe \
	SpecialList.exe \
	NumericTest.exe 

test: all 
	FuncObject.exe  
	FunctionObjects.exe  
	Binder1.exe  
	Binder2.exe  
	Binder3.exe  
	Binder4.exe  
	RandGenTest.exe  
	MemFun1.exe  
	MemFun2.exe  
	FindBlanks.exe  
	MemFun3.exe  
	NoCompose.exe  
	FillGenerateTest.exe  
	Counting.exe  
	Manipulations.exe  
	Comparison.exe  
	SortTest.exe  
	SortedSearchTest.exe  
	MergeTest.exe  
	SetOperations.exe  
	ForEach.exe  
	Transform.exe  
	CalcInventory.exe  
	TransformNames.exe  
	SpecialList.exe  
	NumericTest.exe  

bugs: \
	PtrFun1.exe \
	PtrFun2.exe \
	MemFun4.exe \
	Compose2.exe \
	SearchReplace.exe \
	Removing.exe 

FuncObject.exe: FuncObject.obj 
	$(CPP) $(OFLAG)FuncObject.exe FuncObject.obj 

FunctionObjects.exe: FunctionObjects.obj 
	$(CPP) $(OFLAG)FunctionObjects.exe FunctionObjects.obj 

Binder1.exe: Binder1.obj 
	$(CPP) $(OFLAG)Binder1.exe Binder1.obj 

Binder2.exe: Binder2.obj 
	$(CPP) $(OFLAG)Binder2.exe Binder2.obj 

Binder3.exe: Binder3.obj 
	$(CPP) $(OFLAG)Binder3.exe Binder3.obj 

Binder4.exe: Binder4.obj 
	$(CPP) $(OFLAG)Binder4.exe Binder4.obj 

RandGenTest.exe: RandGenTest.obj 
	$(CPP) $(OFLAG)RandGenTest.exe RandGenTest.obj 

PtrFun1.exe: PtrFun1.obj 
	$(CPP) $(OFLAG)PtrFun1.exe PtrFun1.obj 

PtrFun2.exe: PtrFun2.obj 
	$(CPP) $(OFLAG)PtrFun2.exe PtrFun2.obj 

MemFun1.exe: MemFun1.obj 
	$(CPP) $(OFLAG)MemFun1.exe MemFun1.obj 

MemFun2.exe: MemFun2.obj 
	$(CPP) $(OFLAG)MemFun2.exe MemFun2.obj 

FindBlanks.exe: FindBlanks.obj 
	$(CPP) $(OFLAG)FindBlanks.exe FindBlanks.obj 

MemFun3.exe: MemFun3.obj 
	$(CPP) $(OFLAG)MemFun3.exe MemFun3.obj 

MemFun4.exe: MemFun4.obj 
	$(CPP) $(OFLAG)MemFun4.exe MemFun4.obj 

Compose2.exe: Compose2.obj 
	$(CPP) $(OFLAG)Compose2.exe Compose2.obj 

NoCompose.exe: NoCompose.obj 
	$(CPP) $(OFLAG)NoCompose.exe NoCompose.obj 

FillGenerateTest.exe: FillGenerateTest.obj 
	$(CPP) $(OFLAG)FillGenerateTest.exe FillGenerateTest.obj 

Counting.exe: Counting.obj 
	$(CPP) $(OFLAG)Counting.exe Counting.obj 

Manipulations.exe: Manipulations.obj 
	$(CPP) $(OFLAG)Manipulations.exe Manipulations.obj 

SearchReplace.exe: SearchReplace.obj 
	$(CPP) $(OFLAG)SearchReplace.exe SearchReplace.obj 

Comparison.exe: Comparison.obj 
	$(CPP) $(OFLAG)Comparison.exe Comparison.obj 

Removing.exe: Removing.obj 
	$(CPP) $(OFLAG)Removing.exe Removing.obj 

SortTest.exe: SortTest.obj ..\C04\StreamTokenizer.obj 
	$(CPP) $(OFLAG)SortTest.exe SortTest.obj ..\C04\StreamTokenizer.obj 

SortedSearchTest.exe: SortedSearchTest.obj ..\C04\StreamTokenizer.obj 
	$(CPP) $(OFLAG)SortedSearchTest.exe SortedSearchTest.obj ..\C04\StreamTokenizer.obj 

MergeTest.exe: MergeTest.obj 
	$(CPP) $(OFLAG)MergeTest.exe MergeTest.obj 

SetOperations.exe: SetOperations.obj 
	$(CPP) $(OFLAG)SetOperations.exe SetOperations.obj 

ForEach.exe: ForEach.obj 
	$(CPP) $(OFLAG)ForEach.exe ForEach.obj 

Transform.exe: Transform.obj 
	$(CPP) $(OFLAG)Transform.exe Transform.obj 

CalcInventory.exe: CalcInventory.obj 
	$(CPP) $(OFLAG)CalcInventory.exe CalcInventory.obj 

TransformNames.exe: TransformNames.obj 
	$(CPP) $(OFLAG)TransformNames.exe TransformNames.obj 

SpecialList.exe: SpecialList.obj 
	$(CPP) $(OFLAG)SpecialList.exe SpecialList.obj 

NumericTest.exe: NumericTest.obj 
	$(CPP) $(OFLAG)NumericTest.exe NumericTest.obj 


FuncObject.obj: FuncObject.cpp 
FunctionObjects.obj: FunctionObjects.cpp Generators.h 
Binder1.obj: Binder1.cpp Generators.h copy_if.h 
Binder2.obj: Binder2.cpp 
Binder3.obj: Binder3.cpp Generators.h 
Binder4.obj: Binder4.cpp copy_if.h PrintSequence.h ..\require.h 
RandGenTest.obj: RandGenTest.cpp 
PtrFun1.obj: PtrFun1.cpp 
PtrFun2.obj: PtrFun2.cpp 
MemFun1.obj: MemFun1.cpp ..\purge.h 
MemFun2.obj: MemFun2.cpp 
FindBlanks.obj: FindBlanks.cpp ..\require.h 
MemFun3.obj: MemFun3.cpp NumStringGen.h 
MemFun4.obj: MemFun4.cpp NumStringGen.h 
Compose2.obj: Compose2.cpp copy_if.h 
NoCompose.obj: NoCompose.cpp copy_if.h 
FillGenerateTest.obj: FillGenerateTest.cpp Generators.h PrintSequence.h 
Counting.obj: Counting.cpp PrintSequence.h Generators.h 
Manipulations.obj: Manipulations.cpp PrintSequence.h NString.h Generators.h 
SearchReplace.obj: SearchReplace.cpp PrintSequence.h 
Comparison.obj: Comparison.cpp PrintSequence.h 
Removing.obj: Removing.cpp PrintSequence.h Generators.h 
SortTest.obj: SortTest.cpp ..\C04\StreamTokenizer.h NString.h PrintSequence.h Generators.h ..\require.h 
SortedSearchTest.obj: SortedSearchTest.cpp ..\C04\StreamTokenizer.h PrintSequence.h NString.h ..\require.h 
MergeTest.obj: MergeTest.cpp PrintSequence.h Generators.h 
SetOperations.obj: SetOperations.cpp PrintSequence.h Generators.h 
ForEach.obj: ForEach.cpp Counted.h 
Transform.obj: Transform.cpp Counted.h 
CalcInventory.obj: CalcInventory.cpp Inventory.h PrintSequence.h 
TransformNames.obj: TransformNames.cpp Inventory.h PrintSequence.h 
SpecialList.obj: SpecialList.cpp Inventory.h PrintSequence.h 
NumericTest.obj: NumericTest.cpp PrintSequence.h 

