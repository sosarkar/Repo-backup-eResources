# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C04
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
	Intset \
	WordSet \
	Stlshape \
	Apply \
	Reversible \
	Inserters \
	StreamIt \
	VectorOverflow \
	VectorCoreDump \
	VectorInsertAndErase \
	DequeOverflow \
	DequeCoreDump \
	ListStability \
	ListSpecialFunctions \
	UniqueList \
	ListVsSet \
	Swapping \
	ListRobustness \
	SequencePerformance \
	WordList \
	Stack1 \
	Stack3 \
	BankTeller \
	PriorityQueue1 \
	PriorityQueue2 \
	PriorityQueue3 \
	PriorityQueue4 \
	PriorityQueue5 \
	PriorityQueue6 \
	PriorityQueue7 \
	PriorityQueue8 \
	AssociativeBasics \
	NoisyMap \
	ProgValTest \
	MultiSet1 \
	Thesaurus \
	Stlshape2 \
	MapVsHashMap 

test: all 
	Intset  
	WordSet  
	Stlshape  
	Apply  
	Reversible  
	Inserters  
	StreamIt  
	VectorOverflow  
	VectorCoreDump  
	VectorInsertAndErase  
	DequeOverflow  
	DequeCoreDump  
	ListStability  
	ListSpecialFunctions  
	UniqueList  
	ListVsSet  
	Swapping  
	ListRobustness  
	SequencePerformance  
	WordList  
	Stack1  
	Stack3  
	BankTeller  
	PriorityQueue1  
	PriorityQueue2  
	PriorityQueue3  
	PriorityQueue4  
	PriorityQueue5  
	PriorityQueue6  
	PriorityQueue7  
	PriorityQueue8  
	AssociativeBasics  
	NoisyMap  
	ProgValTest  
	MultiSet1  
	Thesaurus  
	Stlshape2  
	MapVsHashMap  

bugs: \
	StringVector \
	FEditTest \
	StreambufIterator \
	RawStorageIterator \
	BasicSequenceOperations \
	StringDeque \
	DequeConversion \
	IndexingVsAt \
	WordList2 \
	TokenizeTest \
	TokenIteratorTest \
	Stack2 \
	BitSet \
	VectorOfBool \
	AssocInserter \
	WordCount \
	WildLifeMonitor \
	MultiSetWordCount \
	Ring 

Intset: Intset.o 
	$(CPP) $(OFLAG)Intset Intset.o 

WordSet: WordSet.o 
	$(CPP) $(OFLAG)WordSet WordSet.o 

Stlshape: Stlshape.o 
	$(CPP) $(OFLAG)Stlshape Stlshape.o 

StringVector: StringVector.o 
	$(CPP) $(OFLAG)StringVector StringVector.o 

FEditTest: FEditTest.o FileEditor.o 
	$(CPP) $(OFLAG)FEditTest FEditTest.o FileEditor.o 

Apply: Apply.o 
	$(CPP) $(OFLAG)Apply Apply.o 

Reversible: Reversible.o 
	$(CPP) $(OFLAG)Reversible Reversible.o 

Inserters: Inserters.o 
	$(CPP) $(OFLAG)Inserters Inserters.o 

StreamIt: StreamIt.o 
	$(CPP) $(OFLAG)StreamIt StreamIt.o 

StreambufIterator: StreambufIterator.o 
	$(CPP) $(OFLAG)StreambufIterator StreambufIterator.o 

RawStorageIterator: RawStorageIterator.o 
	$(CPP) $(OFLAG)RawStorageIterator RawStorageIterator.o 

BasicSequenceOperations: BasicSequenceOperations.o 
	$(CPP) $(OFLAG)BasicSequenceOperations BasicSequenceOperations.o 

VectorOverflow: VectorOverflow.o 
	$(CPP) $(OFLAG)VectorOverflow VectorOverflow.o 

VectorCoreDump: VectorCoreDump.o 
	$(CPP) $(OFLAG)VectorCoreDump VectorCoreDump.o 

VectorInsertAndErase: VectorInsertAndErase.o 
	$(CPP) $(OFLAG)VectorInsertAndErase VectorInsertAndErase.o 

StringDeque: StringDeque.o 
	$(CPP) $(OFLAG)StringDeque StringDeque.o 

DequeConversion: DequeConversion.o 
	$(CPP) $(OFLAG)DequeConversion DequeConversion.o 

DequeOverflow: DequeOverflow.o 
	$(CPP) $(OFLAG)DequeOverflow DequeOverflow.o 

DequeCoreDump: DequeCoreDump.o 
	$(CPP) $(OFLAG)DequeCoreDump DequeCoreDump.o 

IndexingVsAt: IndexingVsAt.o 
	$(CPP) $(OFLAG)IndexingVsAt IndexingVsAt.o 

ListStability: ListStability.o 
	$(CPP) $(OFLAG)ListStability ListStability.o 

ListSpecialFunctions: ListSpecialFunctions.o 
	$(CPP) $(OFLAG)ListSpecialFunctions ListSpecialFunctions.o 

UniqueList: UniqueList.o 
	$(CPP) $(OFLAG)UniqueList UniqueList.o 

ListVsSet: ListVsSet.o 
	$(CPP) $(OFLAG)ListVsSet ListVsSet.o 

Swapping: Swapping.o 
	$(CPP) $(OFLAG)Swapping Swapping.o 

ListRobustness: ListRobustness.o 
	$(CPP) $(OFLAG)ListRobustness ListRobustness.o 

SequencePerformance: SequencePerformance.o 
	$(CPP) $(OFLAG)SequencePerformance SequencePerformance.o 

WordList: WordList.o 
	$(CPP) $(OFLAG)WordList WordList.o 

WordList2: WordList2.o 
	$(CPP) $(OFLAG)WordList2 WordList2.o 

TokenizeTest: TokenizeTest.o StreamTokenizer.o 
	$(CPP) $(OFLAG)TokenizeTest TokenizeTest.o StreamTokenizer.o 

TokenIteratorTest: TokenIteratorTest.o 
	$(CPP) $(OFLAG)TokenIteratorTest TokenIteratorTest.o 

Stack1: Stack1.o 
	$(CPP) $(OFLAG)Stack1 Stack1.o 

Stack2: Stack2.o 
	$(CPP) $(OFLAG)Stack2 Stack2.o 

Stack3: Stack3.o 
	$(CPP) $(OFLAG)Stack3 Stack3.o 

BankTeller: BankTeller.o 
	$(CPP) $(OFLAG)BankTeller BankTeller.o 

PriorityQueue1: PriorityQueue1.o 
	$(CPP) $(OFLAG)PriorityQueue1 PriorityQueue1.o 

PriorityQueue2: PriorityQueue2.o 
	$(CPP) $(OFLAG)PriorityQueue2 PriorityQueue2.o 

PriorityQueue3: PriorityQueue3.o 
	$(CPP) $(OFLAG)PriorityQueue3 PriorityQueue3.o 

PriorityQueue4: PriorityQueue4.o 
	$(CPP) $(OFLAG)PriorityQueue4 PriorityQueue4.o 

PriorityQueue5: PriorityQueue5.o 
	$(CPP) $(OFLAG)PriorityQueue5 PriorityQueue5.o 

PriorityQueue6: PriorityQueue6.o 
	$(CPP) $(OFLAG)PriorityQueue6 PriorityQueue6.o 

PriorityQueue7: PriorityQueue7.o 
	$(CPP) $(OFLAG)PriorityQueue7 PriorityQueue7.o 

PriorityQueue8: PriorityQueue8.o 
	$(CPP) $(OFLAG)PriorityQueue8 PriorityQueue8.o 

BitSet: BitSet.o 
	$(CPP) $(OFLAG)BitSet BitSet.o 

VectorOfBool: VectorOfBool.o 
	$(CPP) $(OFLAG)VectorOfBool VectorOfBool.o 

AssociativeBasics: AssociativeBasics.o 
	$(CPP) $(OFLAG)AssociativeBasics AssociativeBasics.o 

NoisyMap: NoisyMap.o 
	$(CPP) $(OFLAG)NoisyMap NoisyMap.o 

AssocInserter: AssocInserter.o 
	$(CPP) $(OFLAG)AssocInserter AssocInserter.o 

WordCount: WordCount.o StreamTokenizer.o 
	$(CPP) $(OFLAG)WordCount WordCount.o StreamTokenizer.o 

ProgValTest: ProgValTest.o ProgVals.o 
	$(CPP) $(OFLAG)ProgValTest ProgValTest.o ProgVals.o 

WildLifeMonitor: WildLifeMonitor.o 
	$(CPP) $(OFLAG)WildLifeMonitor WildLifeMonitor.o 

MultiSet1: MultiSet1.o 
	$(CPP) $(OFLAG)MultiSet1 MultiSet1.o 

MultiSetWordCount: MultiSetWordCount.o StreamTokenizer.o 
	$(CPP) $(OFLAG)MultiSetWordCount MultiSetWordCount.o StreamTokenizer.o 

Thesaurus: Thesaurus.o 
	$(CPP) $(OFLAG)Thesaurus Thesaurus.o 

Stlshape2: Stlshape2.o 
	$(CPP) $(OFLAG)Stlshape2 Stlshape2.o 

Ring: Ring.o 
	$(CPP) $(OFLAG)Ring Ring.o 

MapVsHashMap: MapVsHashMap.o 
	$(CPP) $(OFLAG)MapVsHashMap MapVsHashMap.o 


Intset.o: Intset.cpp 
WordSet.o: WordSet.cpp ../require.h 
Stlshape.o: Stlshape.cpp 
StringVector.o: StringVector.cpp ../require.h 
FileEditor.o: FileEditor.cpp FileEditor.h ../require.h 
FEditTest.o: FEditTest.cpp FileEditor.h ../require.h 
Apply.o: Apply.cpp 
Reversible.o: Reversible.cpp ../require.h 
Inserters.o: Inserters.cpp 
StreamIt.o: StreamIt.cpp ../require.h 
StreambufIterator.o: StreambufIterator.cpp ../require.h 
RawStorageIterator.o: RawStorageIterator.cpp Noisy.h 
BasicSequenceOperations.o: BasicSequenceOperations.cpp 
VectorOverflow.o: VectorOverflow.cpp Noisy.h ../require.h 
VectorCoreDump.o: VectorCoreDump.cpp 
VectorInsertAndErase.o: VectorInsertAndErase.cpp Noisy.h 
StringDeque.o: StringDeque.cpp ../require.h 
DequeConversion.o: DequeConversion.cpp Noisy.h 
DequeOverflow.o: DequeOverflow.cpp Noisy.h 
DequeCoreDump.o: DequeCoreDump.cpp 
IndexingVsAt.o: IndexingVsAt.cpp ../require.h 
ListStability.o: ListStability.cpp Noisy.h 
ListSpecialFunctions.o: ListSpecialFunctions.cpp Noisy.h 
UniqueList.o: UniqueList.cpp 
ListVsSet.o: ListVsSet.cpp 
Swapping.o: Swapping.cpp Noisy.h 
ListRobustness.o: ListRobustness.cpp 
SequencePerformance.o: SequencePerformance.cpp 
WordList.o: WordList.cpp ../require.h 
WordList2.o: WordList2.cpp ../require.h 
StreamTokenizer.o: StreamTokenizer.cpp StreamTokenizer.h 
TokenizeTest.o: TokenizeTest.cpp StreamTokenizer.h ../require.h 
TokenIteratorTest.o: TokenIteratorTest.cpp TokenIterator.h ../require.h 
Stack1.o: Stack1.cpp ../require.h 
Stack2.o: Stack2.cpp ../require.h 
Stack3.o: Stack3.cpp ../require.h 
BankTeller.o: BankTeller.cpp 
PriorityQueue1.o: PriorityQueue1.cpp 
PriorityQueue2.o: PriorityQueue2.cpp 
PriorityQueue3.o: PriorityQueue3.cpp 
PriorityQueue4.o: PriorityQueue4.cpp 
PriorityQueue5.o: PriorityQueue5.cpp 
PriorityQueue6.o: PriorityQueue6.cpp 
PriorityQueue7.o: PriorityQueue7.cpp 
PriorityQueue8.o: PriorityQueue8.cpp 
BitSet.o: BitSet.cpp 
VectorOfBool.o: VectorOfBool.cpp 
AssociativeBasics.o: AssociativeBasics.cpp Noisy.h 
NoisyMap.o: NoisyMap.cpp Noisy.h 
AssocInserter.o: AssocInserter.cpp SimpleGenerators.h 
WordCount.o: WordCount.cpp StreamTokenizer.h ../require.h 
ProgVals.o: ProgVals.cpp ProgVals.h 
ProgValTest.o: ProgValTest.cpp ProgVals.h 
WildLifeMonitor.o: WildLifeMonitor.cpp 
MultiSet1.o: MultiSet1.cpp 
MultiSetWordCount.o: MultiSetWordCount.cpp StreamTokenizer.h ../require.h 
Thesaurus.o: Thesaurus.cpp 
Stlshape2.o: Stlshape2.cpp ../purge.h 
Ring.o: Ring.cpp 
MapVsHashMap.o: MapVsHashMap.cpp 

