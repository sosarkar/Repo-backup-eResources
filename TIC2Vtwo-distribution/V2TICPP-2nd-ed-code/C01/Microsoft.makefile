# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C01
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
	StringStorage.exe \
	SmallString.exe \
	SmallString2.exe \
	StringIterators.exe \
	UhOh.exe \
	StrSize.exe \
	StringReplace.exe \
	Replace.exe \
	ReplaceAndGrow.exe \
	StringCharReplace.exe \
	AddStrings.exe \
	Sieve.exe \
	Find.exe \
	NewFind.exe \
	Rparse.exe \
	TrimTest.exe \
	ReprocessHTML.exe \
	HTMLStripper.exe \
	CompStr.exe \
	Compare.exe \
	Compare2.exe \
	StringIndexing.exe \
	BadStringIndexing.exe \
	CmpIter.exe \
	RevStr.exe \
	SiteMapConvert.exe 

test: all 
	StringStorage.exe  
	SmallString.exe  
	SmallString2.exe  
	StringIterators.exe  
	UhOh.exe  
	StrSize.exe  
	StringReplace.exe  
	Replace.exe  
	ReplaceAndGrow.exe  
	StringCharReplace.exe  
	AddStrings.exe  
	Sieve.exe  
	Find.exe  
	NewFind.exe  
	Rparse.exe  
	TrimTest.exe  
	ReprocessHTML.exe  
	HTMLStripper.exe  
	CompStr.exe  
	Compare.exe  
	Compare2.exe  
	StringIndexing.exe  
	BadStringIndexing.exe  
	CmpIter.exe  
	RevStr.exe  
	SiteMapConvert.exe  

bugs: \
	ICompare.exe 

StringStorage.exe: StringStorage.obj 
	$(CPP) $(OFLAG)StringStorage.exe StringStorage.obj 

SmallString.exe: SmallString.obj 
	$(CPP) $(OFLAG)SmallString.exe SmallString.obj 

SmallString2.exe: SmallString2.obj 
	$(CPP) $(OFLAG)SmallString2.exe SmallString2.obj 

StringIterators.exe: StringIterators.obj 
	$(CPP) $(OFLAG)StringIterators.exe StringIterators.obj 

UhOh.exe: UhOh.obj 
	$(CPP) $(OFLAG)UhOh.exe UhOh.obj 

StrSize.exe: StrSize.obj 
	$(CPP) $(OFLAG)StrSize.exe StrSize.obj 

StringReplace.exe: StringReplace.obj 
	$(CPP) $(OFLAG)StringReplace.exe StringReplace.obj 

Replace.exe: Replace.obj 
	$(CPP) $(OFLAG)Replace.exe Replace.obj 

ReplaceAndGrow.exe: ReplaceAndGrow.obj 
	$(CPP) $(OFLAG)ReplaceAndGrow.exe ReplaceAndGrow.obj 

StringCharReplace.exe: StringCharReplace.obj 
	$(CPP) $(OFLAG)StringCharReplace.exe StringCharReplace.obj 

AddStrings.exe: AddStrings.obj 
	$(CPP) $(OFLAG)AddStrings.exe AddStrings.obj 

Sieve.exe: Sieve.obj 
	$(CPP) $(OFLAG)Sieve.exe Sieve.obj 

Find.exe: Find.obj 
	$(CPP) $(OFLAG)Find.exe Find.obj 

NewFind.exe: NewFind.obj 
	$(CPP) $(OFLAG)NewFind.exe NewFind.obj 

Rparse.exe: Rparse.obj 
	$(CPP) $(OFLAG)Rparse.exe Rparse.obj 

TrimTest.exe: TrimTest.obj 
	$(CPP) $(OFLAG)TrimTest.exe TrimTest.obj 

ReprocessHTML.exe: ReprocessHTML.obj 
	$(CPP) $(OFLAG)ReprocessHTML.exe ReprocessHTML.obj 

HTMLStripper.exe: HTMLStripper.obj 
	$(CPP) $(OFLAG)HTMLStripper.exe HTMLStripper.obj 

CompStr.exe: CompStr.obj 
	$(CPP) $(OFLAG)CompStr.exe CompStr.obj 

Compare.exe: Compare.obj 
	$(CPP) $(OFLAG)Compare.exe Compare.obj 

Compare2.exe: Compare2.obj 
	$(CPP) $(OFLAG)Compare2.exe Compare2.obj 

StringIndexing.exe: StringIndexing.obj 
	$(CPP) $(OFLAG)StringIndexing.exe StringIndexing.obj 

BadStringIndexing.exe: BadStringIndexing.obj 
	$(CPP) $(OFLAG)BadStringIndexing.exe BadStringIndexing.obj 

CmpIter.exe: CmpIter.obj 
	$(CPP) $(OFLAG)CmpIter.exe CmpIter.obj 

RevStr.exe: RevStr.obj 
	$(CPP) $(OFLAG)RevStr.exe RevStr.obj 

ICompare.exe: ICompare.obj 
	$(CPP) $(OFLAG)ICompare.exe ICompare.obj 

SiteMapConvert.exe: SiteMapConvert.obj 
	$(CPP) $(OFLAG)SiteMapConvert.exe SiteMapConvert.obj 


StringStorage.obj: StringStorage.cpp 
SmallString.obj: SmallString.cpp 
SmallString2.obj: SmallString2.cpp 
StringIterators.obj: StringIterators.cpp 
UhOh.obj: UhOh.cpp 
StrSize.obj: StrSize.cpp 
StringReplace.obj: StringReplace.cpp 
Replace.obj: Replace.cpp 
ReplaceAndGrow.obj: ReplaceAndGrow.cpp 
StringCharReplace.obj: StringCharReplace.cpp 
AddStrings.obj: AddStrings.cpp 
Sieve.obj: Sieve.cpp 
Find.obj: Find.cpp 
NewFind.obj: NewFind.cpp 
Rparse.obj: Rparse.cpp 
TrimTest.obj: TrimTest.cpp trim.h 
ReprocessHTML.obj: ReprocessHTML.cpp ..\require.h 
HTMLStripper.obj: HTMLStripper.cpp ..\require.h 
CompStr.obj: CompStr.cpp 
Compare.obj: Compare.cpp 
Compare2.obj: Compare2.cpp 
StringIndexing.obj: StringIndexing.cpp 
BadStringIndexing.obj: BadStringIndexing.cpp 
CmpIter.obj: CmpIter.cpp 
RevStr.obj: RevStr.cpp 
ICompare.obj: ICompare.cpp ichar_traits.h 
SiteMapConvert.obj: SiteMapConvert.cpp ..\require.h 

