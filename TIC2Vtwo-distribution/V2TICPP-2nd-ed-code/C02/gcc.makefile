# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C02
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
	FileClassTest \
	Iosexamp \
	Strfile \
	Stype \
	Sbufget \
	Seeking \
	Iofile \
	Istring \
	Ostring \
	Walrus \
	Strmove \
	Format \
	Manips \
	nl \
	Makemain \
	Showerr \
	Datagen \
	Datascan \
	Breakup 

test: all 
	FileClassTest  
	Iosexamp  
	Strfile  
	Stype  
	Sbufget  
	Seeking  
	Iofile  
	Istring  
	Ostring  
	Walrus  
	Strmove  
	Format  
	Manips  
	nl  
	Makemain  
	Showerr  
	Datagen  
	Datascan  
	Breakup  

bugs: \
	Cppcheck \
	NumberPhotos 

FileClassTest: FileClassTest.o FileClass.o 
	$(CPP) $(OFLAG)FileClassTest FileClassTest.o FileClass.o 

Iosexamp: Iosexamp.o 
	$(CPP) $(OFLAG)Iosexamp Iosexamp.o 

Strfile: Strfile.o 
	$(CPP) $(OFLAG)Strfile Strfile.o 

Stype: Stype.o 
	$(CPP) $(OFLAG)Stype Stype.o 

Sbufget: Sbufget.o 
	$(CPP) $(OFLAG)Sbufget Sbufget.o 

Seeking: Seeking.o 
	$(CPP) $(OFLAG)Seeking Seeking.o 

Iofile: Iofile.o 
	$(CPP) $(OFLAG)Iofile Iofile.o 

Istring: Istring.o 
	$(CPP) $(OFLAG)Istring Istring.o 

Ostring: Ostring.o 
	$(CPP) $(OFLAG)Ostring Ostring.o 

Walrus: Walrus.o 
	$(CPP) $(OFLAG)Walrus Walrus.o 

Strmove: Strmove.o 
	$(CPP) $(OFLAG)Strmove Strmove.o 

Format: Format.o 
	$(CPP) $(OFLAG)Format Format.o 

Manips: Manips.o 
	$(CPP) $(OFLAG)Manips Manips.o 

nl: nl.o 
	$(CPP) $(OFLAG)nl nl.o 

Makemain: Makemain.o 
	$(CPP) $(OFLAG)Makemain Makemain.o 

Cppcheck: Cppcheck.o 
	$(CPP) $(OFLAG)Cppcheck Cppcheck.o 

Showerr: Showerr.o 
	$(CPP) $(OFLAG)Showerr Showerr.o 

Datagen: Datagen.o Datalog.o 
	$(CPP) $(OFLAG)Datagen Datagen.o Datalog.o 

Datascan: Datascan.o Datalog.o 
	$(CPP) $(OFLAG)Datascan Datascan.o Datalog.o 

NumberPhotos: NumberPhotos.o 
	$(CPP) $(OFLAG)NumberPhotos NumberPhotos.o 

Breakup: Breakup.o 
	$(CPP) $(OFLAG)Breakup Breakup.o 


FileClass.o: FileClass.cpp FileClass.h 
FileClassTest.o: FileClassTest.cpp FileClass.h ../require.h 
Iosexamp.o: Iosexamp.cpp 
Strfile.o: Strfile.cpp ../require.h 
Stype.o: Stype.cpp ../require.h 
Sbufget.o: Sbufget.cpp ../require.h 
Seeking.o: Seeking.cpp ../require.h 
Iofile.o: Iofile.cpp ../require.h 
Istring.o: Istring.cpp 
Ostring.o: Ostring.cpp 
Walrus.o: Walrus.cpp 
Strmove.o: Strmove.cpp 
Format.o: Format.cpp 
Manips.o: Manips.cpp 
nl.o: nl.cpp 
Makemain.o: Makemain.cpp ../require.h 
Cppcheck.o: Cppcheck.cpp ../require.h 
Showerr.o: Showerr.cpp ../require.h 
Datalog.o: Datalog.cpp DataLogger.h 
Datagen.o: Datagen.cpp DataLogger.h ../require.h 
Datascan.o: Datascan.cpp DataLogger.h ../require.h 
NumberPhotos.o: NumberPhotos.cpp ../require.h 
Breakup.o: Breakup.cpp ../require.h 

