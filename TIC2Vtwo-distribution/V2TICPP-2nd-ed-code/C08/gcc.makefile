# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C08
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
	Rtshapes \
	TypeidAndBuiltins \
	RTTIandNesting \
	RTTIWithoutPolymorphism \
	DynamicCast \
	Voidrtti \
	ConstructorOrder \
	RTTIwithReferences \
	RTTIwithExceptions \
	RTTIandMultipleInheritance \
	Recycle2 \
	Selfrtti 

test: all 
	Rtshapes  
	TypeidAndBuiltins  
	RTTIandNesting  
	RTTIWithoutPolymorphism  
	DynamicCast  
	Voidrtti  
	ConstructorOrder  
	RTTIwithReferences  
	RTTIwithExceptions  
	RTTIandMultipleInheritance  
	Recycle2  
	Selfrtti  

bugs: 
	@echo No compiler bugs in this directory!

Rtshapes: Rtshapes.o 
	$(CPP) $(OFLAG)Rtshapes Rtshapes.o 

TypeidAndBuiltins: TypeidAndBuiltins.o 
	$(CPP) $(OFLAG)TypeidAndBuiltins TypeidAndBuiltins.o 

RTTIandNesting: RTTIandNesting.o 
	$(CPP) $(OFLAG)RTTIandNesting RTTIandNesting.o 

RTTIWithoutPolymorphism: RTTIWithoutPolymorphism.o 
	$(CPP) $(OFLAG)RTTIWithoutPolymorphism RTTIWithoutPolymorphism.o 

DynamicCast: DynamicCast.o 
	$(CPP) $(OFLAG)DynamicCast DynamicCast.o 

Voidrtti: Voidrtti.o 
	$(CPP) $(OFLAG)Voidrtti Voidrtti.o 

ConstructorOrder: ConstructorOrder.o 
	$(CPP) $(OFLAG)ConstructorOrder ConstructorOrder.o 

RTTIwithReferences: RTTIwithReferences.o 
	$(CPP) $(OFLAG)RTTIwithReferences RTTIwithReferences.o 

RTTIwithExceptions: RTTIwithExceptions.o 
	$(CPP) $(OFLAG)RTTIwithExceptions RTTIwithExceptions.o 

RTTIandMultipleInheritance: RTTIandMultipleInheritance.o 
	$(CPP) $(OFLAG)RTTIandMultipleInheritance RTTIandMultipleInheritance.o 

Recycle2: Recycle2.o 
	$(CPP) $(OFLAG)Recycle2 Recycle2.o 

Selfrtti: Selfrtti.o 
	$(CPP) $(OFLAG)Selfrtti Selfrtti.o 


Rtshapes.o: Rtshapes.cpp ../purge.h 
TypeidAndBuiltins.o: TypeidAndBuiltins.cpp 
RTTIandNesting.o: RTTIandNesting.cpp 
RTTIWithoutPolymorphism.o: RTTIWithoutPolymorphism.cpp 
DynamicCast.o: DynamicCast.cpp 
Voidrtti.o: Voidrtti.cpp 
ConstructorOrder.o: ConstructorOrder.cpp 
RTTIwithReferences.o: RTTIwithReferences.cpp 
RTTIwithExceptions.o: RTTIwithExceptions.cpp 
RTTIandMultipleInheritance.o: RTTIandMultipleInheritance.cpp 
Recycle2.o: Recycle2.cpp ../purge.h 
Selfrtti.o: Selfrtti.cpp ../purge.h 

