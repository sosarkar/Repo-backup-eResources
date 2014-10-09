# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C02
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
	FileClassTest.exe \
	Iosexamp.exe \
	Strfile.exe \
	Stype.exe \
	Sbufget.exe \
	Seeking.exe \
	Iofile.exe \
	Istring.exe \
	Ostring.exe \
	Walrus.exe \
	Strmove.exe \
	Format.exe \
	Manips.exe \
	nl.exe \
	Makemain.exe \
	Cppcheck.exe \
	Showerr.exe \
	Datagen.exe \
	Datascan.exe \
	NumberPhotos.exe \
	Breakup.exe 

test: all 
	FileClassTest.exe  
	Iosexamp.exe  
	Strfile.exe  
	Stype.exe  
	Sbufget.exe  
	Seeking.exe  
	Iofile.exe  
	Istring.exe  
	Ostring.exe  
	Walrus.exe  
	Strmove.exe  
	Format.exe  
	Manips.exe  
	nl.exe  
	Makemain.exe  
	Cppcheck.exe  
	Showerr.exe  
	Datagen.exe  
	Datascan.exe  
	NumberPhotos.exe  
	Breakup.exe  

bugs: 
	@echo No compiler bugs in this directory!

FileClassTest.exe: FileClassTest.obj FileClass.obj 
	$(CPP) $(OFLAG)FileClassTest.exe FileClassTest.obj FileClass.obj 

Iosexamp.exe: Iosexamp.obj 
	$(CPP) $(OFLAG)Iosexamp.exe Iosexamp.obj 

Strfile.exe: Strfile.obj 
	$(CPP) $(OFLAG)Strfile.exe Strfile.obj 

Stype.exe: Stype.obj 
	$(CPP) $(OFLAG)Stype.exe Stype.obj 

Sbufget.exe: Sbufget.obj 
	$(CPP) $(OFLAG)Sbufget.exe Sbufget.obj 

Seeking.exe: Seeking.obj 
	$(CPP) $(OFLAG)Seeking.exe Seeking.obj 

Iofile.exe: Iofile.obj 
	$(CPP) $(OFLAG)Iofile.exe Iofile.obj 

Istring.exe: Istring.obj 
	$(CPP) $(OFLAG)Istring.exe Istring.obj 

Ostring.exe: Ostring.obj 
	$(CPP) $(OFLAG)Ostring.exe Ostring.obj 

Walrus.exe: Walrus.obj 
	$(CPP) $(OFLAG)Walrus.exe Walrus.obj 

Strmove.exe: Strmove.obj 
	$(CPP) $(OFLAG)Strmove.exe Strmove.obj 

Format.exe: Format.obj 
	$(CPP) $(OFLAG)Format.exe Format.obj 

Manips.exe: Manips.obj 
	$(CPP) $(OFLAG)Manips.exe Manips.obj 

nl.exe: nl.obj 
	$(CPP) $(OFLAG)nl.exe nl.obj 

Makemain.exe: Makemain.obj 
	$(CPP) $(OFLAG)Makemain.exe Makemain.obj 

Cppcheck.exe: Cppcheck.obj 
	$(CPP) $(OFLAG)Cppcheck.exe Cppcheck.obj 

Showerr.exe: Showerr.obj 
	$(CPP) $(OFLAG)Showerr.exe Showerr.obj 

Datagen.exe: Datagen.obj Datalog.obj 
	$(CPP) $(OFLAG)Datagen.exe Datagen.obj Datalog.obj 

Datascan.exe: Datascan.obj Datalog.obj 
	$(CPP) $(OFLAG)Datascan.exe Datascan.obj Datalog.obj 

NumberPhotos.exe: NumberPhotos.obj 
	$(CPP) $(OFLAG)NumberPhotos.exe NumberPhotos.obj 

Breakup.exe: Breakup.obj 
	$(CPP) $(OFLAG)Breakup.exe Breakup.obj 


FileClass.obj: FileClass.cpp FileClass.h 
FileClassTest.obj: FileClassTest.cpp FileClass.h ..\require.h 
Iosexamp.obj: Iosexamp.cpp 
Strfile.obj: Strfile.cpp ..\require.h 
Stype.obj: Stype.cpp ..\require.h 
Sbufget.obj: Sbufget.cpp ..\require.h 
Seeking.obj: Seeking.cpp ..\require.h 
Iofile.obj: Iofile.cpp ..\require.h 
Istring.obj: Istring.cpp 
Ostring.obj: Ostring.cpp 
Walrus.obj: Walrus.cpp 
Strmove.obj: Strmove.cpp 
Format.obj: Format.cpp 
Manips.obj: Manips.cpp 
nl.obj: nl.cpp 
Makemain.obj: Makemain.cpp ..\require.h 
Cppcheck.obj: Cppcheck.cpp ..\require.h 
Showerr.obj: Showerr.cpp ..\require.h 
Datalog.obj: Datalog.cpp DataLogger.h 
Datagen.obj: Datagen.cpp DataLogger.h ..\require.h 
Datascan.obj: Datascan.cpp DataLogger.h ..\require.h 
NumberPhotos.obj: NumberPhotos.cpp ..\require.h 
Breakup.obj: Breakup.cpp ..\require.h 

