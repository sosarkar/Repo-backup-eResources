# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C10
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
	SingletonPattern \
	UseLog2 \
	SingletonPattern2 \
	FunctionStaticSingleton \
	ShapeFactory1 \
	ShapeFactory2 \
	AbstractFactory \
	VirtualConstructor \
	InnerClassIdiom \
	ObservedFlower \
	PaperScissorsRock \
	BeeAndFlowers \
	Recycle1 \
	Recycle2 \
	Recycle3 \
	Recycle4 \
	DoubleDispatch \
	TrashVisitor \
	DynaTrash 

test: all 
	SingletonPattern  
	UseLog2  
	SingletonPattern2  
	FunctionStaticSingleton  
	ShapeFactory1  
	ShapeFactory2  
	AbstractFactory  
	VirtualConstructor  
	InnerClassIdiom  
	ObservedFlower  
	PaperScissorsRock  
	BeeAndFlowers  
	Recycle1  
	Recycle2  
	Recycle3  
	Recycle4  
	DoubleDispatch  
	TrashVisitor  
	DynaTrash  

bugs: 
	@echo No compiler bugs in this directory!

SingletonPattern: SingletonPattern.o 
	$(CPP) $(OFLAG)SingletonPattern SingletonPattern.o 

UseLog2: UseLog2.o UseLog1.o LogFile.o 
	$(CPP) $(OFLAG)UseLog2 UseLog2.o UseLog1.o LogFile.o 

SingletonPattern2: SingletonPattern2.o 
	$(CPP) $(OFLAG)SingletonPattern2 SingletonPattern2.o 

FunctionStaticSingleton: FunctionStaticSingleton.o 
	$(CPP) $(OFLAG)FunctionStaticSingleton FunctionStaticSingleton.o 

ShapeFactory1: ShapeFactory1.o 
	$(CPP) $(OFLAG)ShapeFactory1 ShapeFactory1.o 

ShapeFactory2: ShapeFactory2.o 
	$(CPP) $(OFLAG)ShapeFactory2 ShapeFactory2.o 

AbstractFactory: AbstractFactory.o 
	$(CPP) $(OFLAG)AbstractFactory AbstractFactory.o 

VirtualConstructor: VirtualConstructor.o 
	$(CPP) $(OFLAG)VirtualConstructor VirtualConstructor.o 

InnerClassIdiom: InnerClassIdiom.o 
	$(CPP) $(OFLAG)InnerClassIdiom InnerClassIdiom.o 

ObservedFlower: ObservedFlower.o 
	$(CPP) $(OFLAG)ObservedFlower ObservedFlower.o 

PaperScissorsRock: PaperScissorsRock.o 
	$(CPP) $(OFLAG)PaperScissorsRock PaperScissorsRock.o 

BeeAndFlowers: BeeAndFlowers.o 
	$(CPP) $(OFLAG)BeeAndFlowers BeeAndFlowers.o 

Recycle1: Recycle1.o 
	$(CPP) $(OFLAG)Recycle1 Recycle1.o 

Recycle2: Recycle2.o 
	$(CPP) $(OFLAG)Recycle2 Recycle2.o 

Recycle3: Recycle3.o TrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 
	$(CPP) $(OFLAG)Recycle3 Recycle3.o TrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 

Recycle4: Recycle4.o TrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 
	$(CPP) $(OFLAG)Recycle4 Recycle4.o TrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 

DoubleDispatch: DoubleDispatch.o DDTrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 
	$(CPP) $(OFLAG)DoubleDispatch DoubleDispatch.o DDTrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 

TrashVisitor: TrashVisitor.o VisitorTrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 
	$(CPP) $(OFLAG)TrashVisitor TrashVisitor.o VisitorTrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 

DynaTrash: DynaTrash.o TrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 
	$(CPP) $(OFLAG)DynaTrash DynaTrash.o TrashPrototypeInit.o fillBin.o Trash.o TrashStatics.o 


SingletonPattern.o: SingletonPattern.cpp 
LogFile.o: LogFile.cpp LogFile.h 
UseLog1.o: UseLog1.cpp UseLog1.h LogFile.h 
UseLog2.o: UseLog2.cpp UseLog1.h LogFile.h 
SingletonPattern2.o: SingletonPattern2.cpp 
FunctionStaticSingleton.o: FunctionStaticSingleton.cpp 
ShapeFactory1.o: ShapeFactory1.cpp ../purge.h 
ShapeFactory2.o: ShapeFactory2.cpp ../purge.h 
AbstractFactory.o: AbstractFactory.cpp 
VirtualConstructor.o: VirtualConstructor.cpp 
InnerClassIdiom.o: InnerClassIdiom.cpp 
ObservedFlower.o: ObservedFlower.cpp Observable.h 
PaperScissorsRock.o: PaperScissorsRock.cpp ../purge.h 
BeeAndFlowers.o: BeeAndFlowers.cpp ../purge.h 
Recycle1.o: Recycle1.cpp sumValue.h ../purge.h 
Recycle2.o: Recycle2.cpp sumValue.h ../purge.h 
Trash.o: Trash.cpp Trash.h 
TrashStatics.o: TrashStatics.cpp Trash.h Aluminum.h Paper.h Glass.h Cardboard.h 
TrashPrototypeInit.o: TrashPrototypeInit.cpp Trash.h Aluminum.h Paper.h Glass.h Cardboard.h 
fillBin.o: fillBin.cpp fillBin.h Fillable.h ../C01/trim.h ../require.h 
Recycle3.o: Recycle3.cpp Trash.h Aluminum.h Paper.h Glass.h fillBin.h sumValue.h ../purge.h 
Recycle4.o: Recycle4.cpp Trash.h Aluminum.h Paper.h Glass.h Cardboard.h fillBin.h sumValue.h ../purge.h 
DDTrashPrototypeInit.o: DDTrashPrototypeInit.cpp TypedBin.h Aluminum.h Paper.h Glass.h Cardboard.h 
DoubleDispatch.o: DoubleDispatch.cpp TypedBin.h fillBin.h sumValue.h ../purge.h 
VisitorTrashPrototypeInit.o: VisitorTrashPrototypeInit.cpp Visitor.h 
TrashVisitor.o: TrashVisitor.cpp Visitor.h fillBin.h ../purge.h 
DynaTrash.o: DynaTrash.cpp Trash.h fillBin.h sumValue.h ../purge.h 

