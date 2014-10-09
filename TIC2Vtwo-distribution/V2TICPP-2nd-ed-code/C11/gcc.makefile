# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C11
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
	ExtractCode \
	Tracetst \
	MemTest \
	CGI_GET \
	CGI_POST \
	mlm \
	RemoveDuplicates \
	RemoveGroup \
	ExtractUndeliverable \
	Batchmail \
	ExtractInfo \
	FormDump \
	ProcessApplication \
	DataToSpreadsheet 

test: all 
	ExtractCode  
	Tracetst  
	MemTest  
	CGI_GET  
	CGI_POST  
	mlm  
	RemoveDuplicates  
	RemoveGroup  
	ExtractUndeliverable  
	Batchmail  
	ExtractInfo  
	FormDump  
	ProcessApplication  
	DataToSpreadsheet  

bugs: 
	@echo No compiler bugs in this directory!

ExtractCode: ExtractCode.o 
	$(CPP) $(OFLAG)ExtractCode ExtractCode.o 

Tracetst: Tracetst.o 
	$(CPP) $(OFLAG)Tracetst Tracetst.o 

MemTest: MemTest.o MemCheck.o 
	$(CPP) $(OFLAG)MemTest MemTest.o MemCheck.o 

CGI_GET: CGI_GET.o 
	$(CPP) $(OFLAG)CGI_GET CGI_GET.o 

CGI_POST: CGI_POST.o 
	$(CPP) $(OFLAG)CGI_POST CGI_POST.o 

mlm: mlm.o 
	$(CPP) $(OFLAG)mlm mlm.o 

RemoveDuplicates: RemoveDuplicates.o 
	$(CPP) $(OFLAG)RemoveDuplicates RemoveDuplicates.o 

RemoveGroup: RemoveGroup.o 
	$(CPP) $(OFLAG)RemoveGroup RemoveGroup.o 

ExtractUndeliverable: ExtractUndeliverable.o 
	$(CPP) $(OFLAG)ExtractUndeliverable ExtractUndeliverable.o 

Batchmail: Batchmail.o 
	$(CPP) $(OFLAG)Batchmail Batchmail.o 

ExtractInfo: ExtractInfo.o 
	$(CPP) $(OFLAG)ExtractInfo ExtractInfo.o 

FormDump: FormDump.o FormData.o 
	$(CPP) $(OFLAG)FormDump FormDump.o FormData.o 

ProcessApplication: ProcessApplication.o FormData.o 
	$(CPP) $(OFLAG)ProcessApplication ProcessApplication.o FormData.o 

DataToSpreadsheet: DataToSpreadsheet.o FormData.o 
	$(CPP) $(OFLAG)DataToSpreadsheet DataToSpreadsheet.o FormData.o 


ExtractCode.o: ExtractCode.cpp 
Tracetst.o: Tracetst.cpp ../require.h Trace.h 
MemCheck.o: MemCheck.cpp 
MemTest.o: MemTest.cpp MemCheck.h 
CGI_GET.o: CGI_GET.cpp CGImap.h 
CGI_POST.o: CGI_POST.cpp CGImap.h 
mlm.o: mlm.cpp CGImap.h 
RemoveDuplicates.o: RemoveDuplicates.cpp readLower.h ../require.h 
RemoveGroup.o: RemoveGroup.cpp readLower.h ../require.h 
ExtractUndeliverable.o: ExtractUndeliverable.cpp ../require.h 
Batchmail.o: Batchmail.cpp ../require.h 
ExtractInfo.o: ExtractInfo.cpp CGImap.h 
FormData.o: FormData.cpp FormData.h ../require.h 
FormDump.o: FormDump.cpp FormData.h ../require.h 
ProcessApplication.o: ProcessApplication.cpp FormData.h ../require.h 
DataToSpreadsheet.o: DataToSpreadsheet.cpp FormData.h ../require.h 

