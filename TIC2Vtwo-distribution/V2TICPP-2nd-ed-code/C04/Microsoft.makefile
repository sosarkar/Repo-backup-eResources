# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C04
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
	Intset.exe \
	WordSet.exe \
	Stlshape.exe \
	StringVector.exe \
	FEditTest.exe \
	Apply.exe \
	Reversible.exe \
	Inserters.exe \
	StreambufIterator.exe \
	RawStorageIterator.exe \
	VectorOverflow.exe \
	VectorInsertAndErase.exe \
	StringDeque.exe \
	DequeOverflow.exe \
	DequeCoreDump.exe \
	IndexingVsAt.exe \
	ListStability.exe \
	ListSpecialFunctions.exe \
	UniqueList.exe \
	ListVsSet.exe \
	Swapping.exe \
	ListRobustness.exe \
	SequencePerformance.exe \
	WordList.exe \
	WordList2.exe \
	TokenizeTest.exe \
	TokenIteratorTest.exe \
	Stack1.exe \
	Stack3.exe \
	PriorityQueue1.exe \
	PriorityQueue2.exe \
	PriorityQueue3.exe \
	PriorityQueue4.exe \
	PriorityQueue5.exe \
	PriorityQueue6.exe \
	PriorityQueue7.exe \
	PriorityQueue8.exe \
	BitSet.exe \
	AssociativeBasics.exe \
	NoisyMap.exe \
	WordCount.exe \
	ProgValTest.exe \
	MultiSetWordCount.exe \
	Stlshape2.exe \
	Ring.exe 

test: all 
	Intset.exe  
	WordSet.exe  
	Stlshape.exe  
	StringVector.exe  
	FEditTest.exe  
	Apply.exe  
	Reversible.exe  
	Inserters.exe  
	StreambufIterator.exe  
	RawStorageIterator.exe  
	VectorOverflow.exe  
	VectorInsertAndErase.exe  
	StringDeque.exe  
	DequeOverflow.exe  
	DequeCoreDump.exe  
	IndexingVsAt.exe  
	ListStability.exe  
	ListSpecialFunctions.exe  
	UniqueList.exe  
	ListVsSet.exe  
	Swapping.exe  
	ListRobustness.exe  
	SequencePerformance.exe  
	WordList.exe  
	WordList2.exe  
	TokenizeTest.exe  
	TokenIteratorTest.exe  
	Stack1.exe  
	Stack3.exe  
	PriorityQueue1.exe  
	PriorityQueue2.exe  
	PriorityQueue3.exe  
	PriorityQueue4.exe  
	PriorityQueue5.exe  
	PriorityQueue6.exe  
	PriorityQueue7.exe  
	PriorityQueue8.exe  
	BitSet.exe  
	AssociativeBasics.exe  
	NoisyMap.exe  
	WordCount.exe  
	ProgValTest.exe  
	MultiSetWordCount.exe  
	Stlshape2.exe  
	Ring.exe  

bugs: \
	StreamIt.exe \
	BasicSequenceOperations.exe \
	VectorCoreDump.exe \
	DequeConversion.exe \
	Stack2.exe \
	BankTeller.exe \
	VectorOfBool.exe \
	AssocInserter.exe \
	WildLifeMonitor.exe \
	MultiSet1.exe \
	Thesaurus.exe \
	MapVsHashMap.exe 

Intset.exe: Intset.obj 
	$(CPP) $(OFLAG)Intset.exe Intset.obj 

WordSet.exe: WordSet.obj 
	$(CPP) $(OFLAG)WordSet.exe WordSet.obj 

Stlshape.exe: Stlshape.obj 
	$(CPP) $(OFLAG)Stlshape.exe Stlshape.obj 

StringVector.exe: StringVector.obj 
	$(CPP) $(OFLAG)StringVector.exe StringVector.obj 

FEditTest.exe: FEditTest.obj FileEditor.obj 
	$(CPP) $(OFLAG)FEditTest.exe FEditTest.obj FileEditor.obj 

Apply.exe: Apply.obj 
	$(CPP) $(OFLAG)Apply.exe Apply.obj 

Reversible.exe: Reversible.obj 
	$(CPP) $(OFLAG)Reversible.exe Reversible.obj 

Inserters.exe: Inserters.obj 
	$(CPP) $(OFLAG)Inserters.exe Inserters.obj 

StreamIt.exe: StreamIt.obj 
	$(CPP) $(OFLAG)StreamIt.exe StreamIt.obj 

StreambufIterator.exe: StreambufIterator.obj 
	$(CPP) $(OFLAG)StreambufIterator.exe StreambufIterator.obj 

RawStorageIterator.exe: RawStorageIterator.obj 
	$(CPP) $(OFLAG)RawStorageIterator.exe RawStorageIterator.obj 

BasicSequenceOperations.exe: BasicSequenceOperations.obj 
	$(CPP) $(OFLAG)BasicSequenceOperations.exe BasicSequenceOperations.obj 

VectorOverflow.exe: VectorOverflow.obj 
	$(CPP) $(OFLAG)VectorOverflow.exe VectorOverflow.obj 

VectorCoreDump.exe: VectorCoreDump.obj 
	$(CPP) $(OFLAG)VectorCoreDump.exe VectorCoreDump.obj 

VectorInsertAndErase.exe: VectorInsertAndErase.obj 
	$(CPP) $(OFLAG)VectorInsertAndErase.exe VectorInsertAndErase.obj 

StringDeque.exe: StringDeque.obj 
	$(CPP) $(OFLAG)StringDeque.exe StringDeque.obj 

DequeConversion.exe: DequeConversion.obj 
	$(CPP) $(OFLAG)DequeConversion.exe DequeConversion.obj 

DequeOverflow.exe: DequeOverflow.obj 
	$(CPP) $(OFLAG)DequeOverflow.exe DequeOverflow.obj 

DequeCoreDump.exe: DequeCoreDump.obj 
	$(CPP) $(OFLAG)DequeCoreDump.exe DequeCoreDump.obj 

IndexingVsAt.exe: IndexingVsAt.obj 
	$(CPP) $(OFLAG)IndexingVsAt.exe IndexingVsAt.obj 

ListStability.exe: ListStability.obj 
	$(CPP) $(OFLAG)ListStability.exe ListStability.obj 

ListSpecialFunctions.exe: ListSpecialFunctions.obj 
	$(CPP) $(OFLAG)ListSpecialFunctions.exe ListSpecialFunctions.obj 

UniqueList.exe: UniqueList.obj 
	$(CPP) $(OFLAG)UniqueList.exe UniqueList.obj 

ListVsSet.exe: ListVsSet.obj 
	$(CPP) $(OFLAG)ListVsSet.exe ListVsSet.obj 

Swapping.exe: Swapping.obj 
	$(CPP) $(OFLAG)Swapping.exe Swapping.obj 

ListRobustness.exe: ListRobustness.obj 
	$(CPP) $(OFLAG)ListRobustness.exe ListRobustness.obj 

SequencePerformance.exe: SequencePerformance.obj 
	$(CPP) $(OFLAG)SequencePerformance.exe SequencePerformance.obj 

WordList.exe: WordList.obj 
	$(CPP) $(OFLAG)WordList.exe WordList.obj 

WordList2.exe: WordList2.obj 
	$(CPP) $(OFLAG)WordList2.exe WordList2.obj 

TokenizeTest.exe: TokenizeTest.obj StreamTokenizer.obj 
	$(CPP) $(OFLAG)TokenizeTest.exe TokenizeTest.obj StreamTokenizer.obj 

TokenIteratorTest.exe: TokenIteratorTest.obj 
	$(CPP) $(OFLAG)TokenIteratorTest.exe TokenIteratorTest.obj 

Stack1.exe: Stack1.obj 
	$(CPP) $(OFLAG)Stack1.exe Stack1.obj 

Stack2.exe: Stack2.obj 
	$(CPP) $(OFLAG)Stack2.exe Stack2.obj 

Stack3.exe: Stack3.obj 
	$(CPP) $(OFLAG)Stack3.exe Stack3.obj 

BankTeller.exe: BankTeller.obj 
	$(CPP) $(OFLAG)BankTeller.exe BankTeller.obj 

PriorityQueue1.exe: PriorityQueue1.obj 
	$(CPP) $(OFLAG)PriorityQueue1.exe PriorityQueue1.obj 

PriorityQueue2.exe: PriorityQueue2.obj 
	$(CPP) $(OFLAG)PriorityQueue2.exe PriorityQueue2.obj 

PriorityQueue3.exe: PriorityQueue3.obj 
	$(CPP) $(OFLAG)PriorityQueue3.exe PriorityQueue3.obj 

PriorityQueue4.exe: PriorityQueue4.obj 
	$(CPP) $(OFLAG)PriorityQueue4.exe PriorityQueue4.obj 

PriorityQueue5.exe: PriorityQueue5.obj 
	$(CPP) $(OFLAG)PriorityQueue5.exe PriorityQueue5.obj 

PriorityQueue6.exe: PriorityQueue6.obj 
	$(CPP) $(OFLAG)PriorityQueue6.exe PriorityQueue6.obj 

PriorityQueue7.exe: PriorityQueue7.obj 
	$(CPP) $(OFLAG)PriorityQueue7.exe PriorityQueue7.obj 

PriorityQueue8.exe: PriorityQueue8.obj 
	$(CPP) $(OFLAG)PriorityQueue8.exe PriorityQueue8.obj 

BitSet.exe: BitSet.obj 
	$(CPP) $(OFLAG)BitSet.exe BitSet.obj 

VectorOfBool.exe: VectorOfBool.obj 
	$(CPP) $(OFLAG)VectorOfBool.exe VectorOfBool.obj 

AssociativeBasics.exe: AssociativeBasics.obj 
	$(CPP) $(OFLAG)AssociativeBasics.exe AssociativeBasics.obj 

NoisyMap.exe: NoisyMap.obj 
	$(CPP) $(OFLAG)NoisyMap.exe NoisyMap.obj 

AssocInserter.exe: AssocInserter.obj 
	$(CPP) $(OFLAG)AssocInserter.exe AssocInserter.obj 

WordCount.exe: WordCount.obj StreamTokenizer.obj 
	$(CPP) $(OFLAG)WordCount.exe WordCount.obj StreamTokenizer.obj 

ProgValTest.exe: ProgValTest.obj ProgVals.obj 
	$(CPP) $(OFLAG)ProgValTest.exe ProgValTest.obj ProgVals.obj 

WildLifeMonitor.exe: WildLifeMonitor.obj 
	$(CPP) $(OFLAG)WildLifeMonitor.exe WildLifeMonitor.obj 

MultiSet1.exe: MultiSet1.obj 
	$(CPP) $(OFLAG)MultiSet1.exe MultiSet1.obj 

MultiSetWordCount.exe: MultiSetWordCount.obj StreamTokenizer.obj 
	$(CPP) $(OFLAG)MultiSetWordCount.exe MultiSetWordCount.obj StreamTokenizer.obj 

Thesaurus.exe: Thesaurus.obj 
	$(CPP) $(OFLAG)Thesaurus.exe Thesaurus.obj 

Stlshape2.exe: Stlshape2.obj 
	$(CPP) $(OFLAG)Stlshape2.exe Stlshape2.obj 

Ring.exe: Ring.obj 
	$(CPP) $(OFLAG)Ring.exe Ring.obj 

MapVsHashMap.exe: MapVsHashMap.obj 
	$(CPP) $(OFLAG)MapVsHashMap.exe MapVsHashMap.obj 


Intset.obj: Intset.cpp 
WordSet.obj: WordSet.cpp ..\require.h 
Stlshape.obj: Stlshape.cpp 
StringVector.obj: StringVector.cpp ..\require.h 
FileEditor.obj: FileEditor.cpp FileEditor.h ..\require.h 
FEditTest.obj: FEditTest.cpp FileEditor.h ..\require.h 
Apply.obj: Apply.cpp 
Reversible.obj: Reversible.cpp ..\require.h 
Inserters.obj: Inserters.cpp 
StreamIt.obj: StreamIt.cpp ..\require.h 
StreambufIterator.obj: StreambufIterator.cpp ..\require.h 
RawStorageIterator.obj: RawStorageIterator.cpp Noisy.h 
BasicSequenceOperations.obj: BasicSequenceOperations.cpp 
VectorOverflow.obj: VectorOverflow.cpp Noisy.h ..\require.h 
VectorCoreDump.obj: VectorCoreDump.cpp 
VectorInsertAndErase.obj: VectorInsertAndErase.cpp Noisy.h 
StringDeque.obj: StringDeque.cpp ..\require.h 
DequeConversion.obj: DequeConversion.cpp Noisy.h 
DequeOverflow.obj: DequeOverflow.cpp Noisy.h 
DequeCoreDump.obj: DequeCoreDump.cpp 
IndexingVsAt.obj: IndexingVsAt.cpp ..\require.h 
ListStability.obj: ListStability.cpp Noisy.h 
ListSpecialFunctions.obj: ListSpecialFunctions.cpp Noisy.h 
UniqueList.obj: UniqueList.cpp 
ListVsSet.obj: ListVsSet.cpp 
Swapping.obj: Swapping.cpp Noisy.h 
ListRobustness.obj: ListRobustness.cpp 
SequencePerformance.obj: SequencePerformance.cpp 
WordList.obj: WordList.cpp ..\require.h 
WordList2.obj: WordList2.cpp ..\require.h 
StreamTokenizer.obj: StreamTokenizer.cpp StreamTokenizer.h 
TokenizeTest.obj: TokenizeTest.cpp StreamTokenizer.h ..\require.h 
TokenIteratorTest.obj: TokenIteratorTest.cpp TokenIterator.h ..\require.h 
Stack1.obj: Stack1.cpp ..\require.h 
Stack2.obj: Stack2.cpp ..\require.h 
Stack3.obj: Stack3.cpp ..\require.h 
BankTeller.obj: BankTeller.cpp 
PriorityQueue1.obj: PriorityQueue1.cpp 
PriorityQueue2.obj: PriorityQueue2.cpp 
PriorityQueue3.obj: PriorityQueue3.cpp 
PriorityQueue4.obj: PriorityQueue4.cpp 
PriorityQueue5.obj: PriorityQueue5.cpp 
PriorityQueue6.obj: PriorityQueue6.cpp 
PriorityQueue7.obj: PriorityQueue7.cpp 
PriorityQueue8.obj: PriorityQueue8.cpp 
BitSet.obj: BitSet.cpp 
VectorOfBool.obj: VectorOfBool.cpp 
AssociativeBasics.obj: AssociativeBasics.cpp Noisy.h 
NoisyMap.obj: NoisyMap.cpp Noisy.h 
AssocInserter.obj: AssocInserter.cpp SimpleGenerators.h 
WordCount.obj: WordCount.cpp StreamTokenizer.h ..\require.h 
ProgVals.obj: ProgVals.cpp ProgVals.h 
ProgValTest.obj: ProgValTest.cpp ProgVals.h 
WildLifeMonitor.obj: WildLifeMonitor.cpp 
MultiSet1.obj: MultiSet1.cpp 
MultiSetWordCount.obj: MultiSetWordCount.cpp StreamTokenizer.h ..\require.h 
Thesaurus.obj: Thesaurus.cpp 
Stlshape2.obj: Stlshape2.cpp ..\purge.h 
Ring.obj: Ring.cpp 
MapVsHashMap.obj: MapVsHashMap.cpp 

