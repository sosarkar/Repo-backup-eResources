# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C05
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
	FuncObject \
	FunctionObjects \
	Binder1 \
	Binder2 \
	Binder3 \
	RandGenTest \
	PtrFun1 \
	PtrFun2 \
	MemFun1 \
	FindBlanks \
	MemFun3 \
	MemFun4 \
	Compose2 \
	NoCompose \
	FillGenerateTest \
	MergeTest \
	SetOperations 

test: all 
	FuncObject  
	FunctionObjects  
	Binder1  
	Binder2  
	Binder3  
	RandGenTest  
	PtrFun1  
	PtrFun2  
	MemFun1  
	FindBlanks  
	MemFun3  
	MemFun4  
	Compose2  
	NoCompose  
	FillGenerateTest  
	MergeTest  
	SetOperations  

bugs: \
	Binder4 \
	MemFun2 \
	Counting \
	Manipulations \
	SearchReplace \
	Comparison \
	Removing \
	SortTest \
	SortedSearchTest \
	ForEach \
	Transform \
	CalcInventory \
	TransformNames \
	SpecialList \
	NumericTest 

FuncObject: FuncObject.o 
	$(CPP) $(OFLAG)FuncObject FuncObject.o 

FunctionObjects: FunctionObjects.o 
	$(CPP) $(OFLAG)FunctionObjects FunctionObjects.o 

Binder1: Binder1.o 
	$(CPP) $(OFLAG)Binder1 Binder1.o 

Binder2: Binder2.o 
	$(CPP) $(OFLAG)Binder2 Binder2.o 

Binder3: Binder3.o 
	$(CPP) $(OFLAG)Binder3 Binder3.o 

Binder4: Binder4.o 
	$(CPP) $(OFLAG)Binder4 Binder4.o 

RandGenTest: RandGenTest.o 
	$(CPP) $(OFLAG)RandGenTest RandGenTest.o 

PtrFun1: PtrFun1.o 
	$(CPP) $(OFLAG)PtrFun1 PtrFun1.o 

PtrFun2: PtrFun2.o 
	$(CPP) $(OFLAG)PtrFun2 PtrFun2.o 

MemFun1: MemFun1.o 
	$(CPP) $(OFLAG)MemFun1 MemFun1.o 

MemFun2: MemFun2.o 
	$(CPP) $(OFLAG)MemFun2 MemFun2.o 

FindBlanks: FindBlanks.o 
	$(CPP) $(OFLAG)FindBlanks FindBlanks.o 

MemFun3: MemFun3.o 
	$(CPP) $(OFLAG)MemFun3 MemFun3.o 

MemFun4: MemFun4.o 
	$(CPP) $(OFLAG)MemFun4 MemFun4.o 

Compose2: Compose2.o 
	$(CPP) $(OFLAG)Compose2 Compose2.o 

NoCompose: NoCompose.o 
	$(CPP) $(OFLAG)NoCompose NoCompose.o 

FillGenerateTest: FillGenerateTest.o 
	$(CPP) $(OFLAG)FillGenerateTest FillGenerateTest.o 

Counting: Counting.o 
	$(CPP) $(OFLAG)Counting Counting.o 

Manipulations: Manipulations.o 
	$(CPP) $(OFLAG)Manipulations Manipulations.o 

SearchReplace: SearchReplace.o 
	$(CPP) $(OFLAG)SearchReplace SearchReplace.o 

Comparison: Comparison.o 
	$(CPP) $(OFLAG)Comparison Comparison.o 

Removing: Removing.o 
	$(CPP) $(OFLAG)Removing Removing.o 

SortTest: SortTest.o ../C04/StreamTokenizer.o 
	$(CPP) $(OFLAG)SortTest SortTest.o ../C04/StreamTokenizer.o 

SortedSearchTest: SortedSearchTest.o ../C04/StreamTokenizer.o 
	$(CPP) $(OFLAG)SortedSearchTest SortedSearchTest.o ../C04/StreamTokenizer.o 

MergeTest: MergeTest.o 
	$(CPP) $(OFLAG)MergeTest MergeTest.o 

SetOperations: SetOperations.o 
	$(CPP) $(OFLAG)SetOperations SetOperations.o 

ForEach: ForEach.o 
	$(CPP) $(OFLAG)ForEach ForEach.o 

Transform: Transform.o 
	$(CPP) $(OFLAG)Transform Transform.o 

CalcInventory: CalcInventory.o 
	$(CPP) $(OFLAG)CalcInventory CalcInventory.o 

TransformNames: TransformNames.o 
	$(CPP) $(OFLAG)TransformNames TransformNames.o 

SpecialList: SpecialList.o 
	$(CPP) $(OFLAG)SpecialList SpecialList.o 

NumericTest: NumericTest.o 
	$(CPP) $(OFLAG)NumericTest NumericTest.o 


FuncObject.o: FuncObject.cpp 
FunctionObjects.o: FunctionObjects.cpp Generators.h 
Binder1.o: Binder1.cpp Generators.h copy_if.h 
Binder2.o: Binder2.cpp 
Binder3.o: Binder3.cpp Generators.h 
Binder4.o: Binder4.cpp copy_if.h PrintSequence.h ../require.h 
RandGenTest.o: RandGenTest.cpp 
PtrFun1.o: PtrFun1.cpp 
PtrFun2.o: PtrFun2.cpp 
MemFun1.o: MemFun1.cpp ../purge.h 
MemFun2.o: MemFun2.cpp 
FindBlanks.o: FindBlanks.cpp ../require.h 
MemFun3.o: MemFun3.cpp NumStringGen.h 
MemFun4.o: MemFun4.cpp NumStringGen.h 
Compose2.o: Compose2.cpp copy_if.h 
NoCompose.o: NoCompose.cpp copy_if.h 
FillGenerateTest.o: FillGenerateTest.cpp Generators.h PrintSequence.h 
Counting.o: Counting.cpp PrintSequence.h Generators.h 
Manipulations.o: Manipulations.cpp PrintSequence.h NString.h Generators.h 
SearchReplace.o: SearchReplace.cpp PrintSequence.h 
Comparison.o: Comparison.cpp PrintSequence.h 
Removing.o: Removing.cpp PrintSequence.h Generators.h 
SortTest.o: SortTest.cpp ../C04/StreamTokenizer.h NString.h PrintSequence.h Generators.h ../require.h 
SortedSearchTest.o: SortedSearchTest.cpp ../C04/StreamTokenizer.h PrintSequence.h NString.h ../require.h 
MergeTest.o: MergeTest.cpp PrintSequence.h Generators.h 
SetOperations.o: SetOperations.cpp PrintSequence.h Generators.h 
ForEach.o: ForEach.cpp Counted.h 
Transform.o: Transform.cpp Counted.h 
CalcInventory.o: CalcInventory.cpp Inventory.h PrintSequence.h 
TransformNames.o: TransformNames.cpp Inventory.h PrintSequence.h 
SpecialList.o: SpecialList.cpp Inventory.h PrintSequence.h 
NumericTest.o: NumericTest.cpp PrintSequence.h 

