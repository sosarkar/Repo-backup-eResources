# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C11
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
	ExtractCode.exe \
	Tracetst.exe \
	MemTest.exe \
	CGI_GET.exe \
	CGI_POST.exe \
	mlm.exe \
	RemoveDuplicates.exe \
	RemoveGroup.exe \
	ExtractUndeliverable.exe \
	Batchmail.exe \
	ExtractInfo.exe \
	FormDump.exe \
	ProcessApplication.exe \
	DataToSpreadsheet.exe 

test: all 
	ExtractCode.exe  
	Tracetst.exe  
	MemTest.exe  
	CGI_GET.exe  
	CGI_POST.exe  
	mlm.exe  
	RemoveDuplicates.exe  
	RemoveGroup.exe  
	ExtractUndeliverable.exe  
	Batchmail.exe  
	ExtractInfo.exe  
	FormDump.exe  
	ProcessApplication.exe  
	DataToSpreadsheet.exe  

bugs: 
	@echo No compiler bugs in this directory!

ExtractCode.exe: ExtractCode.obj 
	$(CPP) $(OFLAG)ExtractCode.exe ExtractCode.obj 

Tracetst.exe: Tracetst.obj 
	$(CPP) $(OFLAG)Tracetst.exe Tracetst.obj 

MemTest.exe: MemTest.obj MemCheck.obj 
	$(CPP) $(OFLAG)MemTest.exe MemTest.obj MemCheck.obj 

CGI_GET.exe: CGI_GET.obj 
	$(CPP) $(OFLAG)CGI_GET.exe CGI_GET.obj 

CGI_POST.exe: CGI_POST.obj 
	$(CPP) $(OFLAG)CGI_POST.exe CGI_POST.obj 

mlm.exe: mlm.obj 
	$(CPP) $(OFLAG)mlm.exe mlm.obj 

RemoveDuplicates.exe: RemoveDuplicates.obj 
	$(CPP) $(OFLAG)RemoveDuplicates.exe RemoveDuplicates.obj 

RemoveGroup.exe: RemoveGroup.obj 
	$(CPP) $(OFLAG)RemoveGroup.exe RemoveGroup.obj 

ExtractUndeliverable.exe: ExtractUndeliverable.obj 
	$(CPP) $(OFLAG)ExtractUndeliverable.exe ExtractUndeliverable.obj 

Batchmail.exe: Batchmail.obj 
	$(CPP) $(OFLAG)Batchmail.exe Batchmail.obj 

ExtractInfo.exe: ExtractInfo.obj 
	$(CPP) $(OFLAG)ExtractInfo.exe ExtractInfo.obj 

FormDump.exe: FormDump.obj FormData.obj 
	$(CPP) $(OFLAG)FormDump.exe FormDump.obj FormData.obj 

ProcessApplication.exe: ProcessApplication.obj FormData.obj 
	$(CPP) $(OFLAG)ProcessApplication.exe ProcessApplication.obj FormData.obj 

DataToSpreadsheet.exe: DataToSpreadsheet.obj FormData.obj 
	$(CPP) $(OFLAG)DataToSpreadsheet.exe DataToSpreadsheet.obj FormData.obj 


ExtractCode.obj: ExtractCode.cpp 
Tracetst.obj: Tracetst.cpp ..\require.h Trace.h 
MemCheck.obj: MemCheck.cpp 
MemTest.obj: MemTest.cpp MemCheck.h 
CGI_GET.obj: CGI_GET.cpp CGImap.h 
CGI_POST.obj: CGI_POST.cpp CGImap.h 
mlm.obj: mlm.cpp CGImap.h 
RemoveDuplicates.obj: RemoveDuplicates.cpp readLower.h ..\require.h 
RemoveGroup.obj: RemoveGroup.cpp readLower.h ..\require.h 
ExtractUndeliverable.obj: ExtractUndeliverable.cpp ..\require.h 
Batchmail.obj: Batchmail.cpp ..\require.h 
ExtractInfo.obj: ExtractInfo.cpp CGImap.h 
FormData.obj: FormData.cpp FormData.h ..\require.h 
FormDump.obj: FormDump.cpp FormData.h ..\require.h 
ProcessApplication.obj: ProcessApplication.cpp FormData.h ..\require.h 
DataToSpreadsheet.obj: DataToSpreadsheet.cpp FormData.h ..\require.h 

