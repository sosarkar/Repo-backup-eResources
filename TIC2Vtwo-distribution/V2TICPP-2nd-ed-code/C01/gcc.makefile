# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C01
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
	StringStorage \
	SmallString \
	SmallString2 \
	StringIterators \
	UhOh \
	StrSize \
	StringReplace \
	Replace \
	ReplaceAndGrow \
	StringCharReplace \
	AddStrings \
	Sieve \
	Find \
	NewFind \
	Rparse \
	TrimTest \
	ReprocessHTML \
	HTMLStripper \
	CompStr \
	Compare \
	StringIndexing \
	BadStringIndexing \
	CmpIter \
	RevStr \
	SiteMapConvert 

test: all 
	StringStorage  
	SmallString  
	SmallString2  
	StringIterators  
	UhOh  
	StrSize  
	StringReplace  
	Replace  
	ReplaceAndGrow  
	StringCharReplace  
	AddStrings  
	Sieve  
	Find  
	NewFind  
	Rparse  
	TrimTest  
	ReprocessHTML  
	HTMLStripper  
	CompStr  
	Compare  
	StringIndexing  
	BadStringIndexing  
	CmpIter  
	RevStr  
	SiteMapConvert  

bugs: \
	Compare2 \
	ICompare 

StringStorage: StringStorage.o 
	$(CPP) $(OFLAG)StringStorage StringStorage.o 

SmallString: SmallString.o 
	$(CPP) $(OFLAG)SmallString SmallString.o 

SmallString2: SmallString2.o 
	$(CPP) $(OFLAG)SmallString2 SmallString2.o 

StringIterators: StringIterators.o 
	$(CPP) $(OFLAG)StringIterators StringIterators.o 

UhOh: UhOh.o 
	$(CPP) $(OFLAG)UhOh UhOh.o 

StrSize: StrSize.o 
	$(CPP) $(OFLAG)StrSize StrSize.o 

StringReplace: StringReplace.o 
	$(CPP) $(OFLAG)StringReplace StringReplace.o 

Replace: Replace.o 
	$(CPP) $(OFLAG)Replace Replace.o 

ReplaceAndGrow: ReplaceAndGrow.o 
	$(CPP) $(OFLAG)ReplaceAndGrow ReplaceAndGrow.o 

StringCharReplace: StringCharReplace.o 
	$(CPP) $(OFLAG)StringCharReplace StringCharReplace.o 

AddStrings: AddStrings.o 
	$(CPP) $(OFLAG)AddStrings AddStrings.o 

Sieve: Sieve.o 
	$(CPP) $(OFLAG)Sieve Sieve.o 

Find: Find.o 
	$(CPP) $(OFLAG)Find Find.o 

NewFind: NewFind.o 
	$(CPP) $(OFLAG)NewFind NewFind.o 

Rparse: Rparse.o 
	$(CPP) $(OFLAG)Rparse Rparse.o 

TrimTest: TrimTest.o 
	$(CPP) $(OFLAG)TrimTest TrimTest.o 

ReprocessHTML: ReprocessHTML.o 
	$(CPP) $(OFLAG)ReprocessHTML ReprocessHTML.o 

HTMLStripper: HTMLStripper.o 
	$(CPP) $(OFLAG)HTMLStripper HTMLStripper.o 

CompStr: CompStr.o 
	$(CPP) $(OFLAG)CompStr CompStr.o 

Compare: Compare.o 
	$(CPP) $(OFLAG)Compare Compare.o 

Compare2: Compare2.o 
	$(CPP) $(OFLAG)Compare2 Compare2.o 

StringIndexing: StringIndexing.o 
	$(CPP) $(OFLAG)StringIndexing StringIndexing.o 

BadStringIndexing: BadStringIndexing.o 
	$(CPP) $(OFLAG)BadStringIndexing BadStringIndexing.o 

CmpIter: CmpIter.o 
	$(CPP) $(OFLAG)CmpIter CmpIter.o 

RevStr: RevStr.o 
	$(CPP) $(OFLAG)RevStr RevStr.o 

ICompare: ICompare.o 
	$(CPP) $(OFLAG)ICompare ICompare.o 

SiteMapConvert: SiteMapConvert.o 
	$(CPP) $(OFLAG)SiteMapConvert SiteMapConvert.o 


StringStorage.o: StringStorage.cpp 
SmallString.o: SmallString.cpp 
SmallString2.o: SmallString2.cpp 
StringIterators.o: StringIterators.cpp 
UhOh.o: UhOh.cpp 
StrSize.o: StrSize.cpp 
StringReplace.o: StringReplace.cpp 
Replace.o: Replace.cpp 
ReplaceAndGrow.o: ReplaceAndGrow.cpp 
StringCharReplace.o: StringCharReplace.cpp 
AddStrings.o: AddStrings.cpp 
Sieve.o: Sieve.cpp 
Find.o: Find.cpp 
NewFind.o: NewFind.cpp 
Rparse.o: Rparse.cpp 
TrimTest.o: TrimTest.cpp trim.h 
ReprocessHTML.o: ReprocessHTML.cpp ../require.h 
HTMLStripper.o: HTMLStripper.cpp ../require.h 
CompStr.o: CompStr.cpp 
Compare.o: Compare.cpp 
Compare2.o: Compare2.cpp 
StringIndexing.o: StringIndexing.cpp 
BadStringIndexing.o: BadStringIndexing.cpp 
CmpIter.o: CmpIter.cpp 
RevStr.o: RevStr.cpp 
ICompare.o: ICompare.cpp ichar_traits.h 
SiteMapConvert.o: SiteMapConvert.cpp ../require.h 

