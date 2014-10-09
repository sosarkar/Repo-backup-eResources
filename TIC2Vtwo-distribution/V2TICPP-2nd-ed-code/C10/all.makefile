# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C10
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
	SingletonPattern.exe \
	UseLog2.exe \
	SingletonPattern2.exe \
	FunctionStaticSingleton.exe \
	ShapeFactory1.exe \
	ShapeFactory2.exe \
	AbstractFactory.exe \
	VirtualConstructor.exe \
	InnerClassIdiom.exe \
	ObservedFlower.exe \
	PaperScissorsRock.exe \
	BeeAndFlowers.exe \
	Recycle1.exe \
	Recycle2.exe \
	Recycle3.exe \
	Recycle4.exe \
	DoubleDispatch.exe \
	TrashVisitor.exe \
	DynaTrash.exe 

test: all 
	SingletonPattern.exe  
	UseLog2.exe  
	SingletonPattern2.exe  
	FunctionStaticSingleton.exe  
	ShapeFactory1.exe  
	ShapeFactory2.exe  
	AbstractFactory.exe  
	VirtualConstructor.exe  
	InnerClassIdiom.exe  
	ObservedFlower.exe  
	PaperScissorsRock.exe  
	BeeAndFlowers.exe  
	Recycle1.exe  
	Recycle2.exe  
	Recycle3.exe  
	Recycle4.exe  
	DoubleDispatch.exe  
	TrashVisitor.exe  
	DynaTrash.exe  

bugs: 
	@echo No compiler bugs in this directory!

SingletonPattern.exe: SingletonPattern.obj 
	$(CPP) $(OFLAG)SingletonPattern.exe SingletonPattern.obj 

UseLog2.exe: UseLog2.obj UseLog1.obj LogFile.obj 
	$(CPP) $(OFLAG)UseLog2.exe UseLog2.obj UseLog1.obj LogFile.obj 

SingletonPattern2.exe: SingletonPattern2.obj 
	$(CPP) $(OFLAG)SingletonPattern2.exe SingletonPattern2.obj 

FunctionStaticSingleton.exe: FunctionStaticSingleton.obj 
	$(CPP) $(OFLAG)FunctionStaticSingleton.exe FunctionStaticSingleton.obj 

ShapeFactory1.exe: ShapeFactory1.obj 
	$(CPP) $(OFLAG)ShapeFactory1.exe ShapeFactory1.obj 

ShapeFactory2.exe: ShapeFactory2.obj 
	$(CPP) $(OFLAG)ShapeFactory2.exe ShapeFactory2.obj 

AbstractFactory.exe: AbstractFactory.obj 
	$(CPP) $(OFLAG)AbstractFactory.exe AbstractFactory.obj 

VirtualConstructor.exe: VirtualConstructor.obj 
	$(CPP) $(OFLAG)VirtualConstructor.exe VirtualConstructor.obj 

InnerClassIdiom.exe: InnerClassIdiom.obj 
	$(CPP) $(OFLAG)InnerClassIdiom.exe InnerClassIdiom.obj 

ObservedFlower.exe: ObservedFlower.obj 
	$(CPP) $(OFLAG)ObservedFlower.exe ObservedFlower.obj 

PaperScissorsRock.exe: PaperScissorsRock.obj 
	$(CPP) $(OFLAG)PaperScissorsRock.exe PaperScissorsRock.obj 

BeeAndFlowers.exe: BeeAndFlowers.obj 
	$(CPP) $(OFLAG)BeeAndFlowers.exe BeeAndFlowers.obj 

Recycle1.exe: Recycle1.obj 
	$(CPP) $(OFLAG)Recycle1.exe Recycle1.obj 

Recycle2.exe: Recycle2.obj 
	$(CPP) $(OFLAG)Recycle2.exe Recycle2.obj 

Recycle3.exe: Recycle3.obj TrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 
	$(CPP) $(OFLAG)Recycle3.exe Recycle3.obj TrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 

Recycle4.exe: Recycle4.obj TrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 
	$(CPP) $(OFLAG)Recycle4.exe Recycle4.obj TrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 

DoubleDispatch.exe: DoubleDispatch.obj DDTrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 
	$(CPP) $(OFLAG)DoubleDispatch.exe DoubleDispatch.obj DDTrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 

TrashVisitor.exe: TrashVisitor.obj VisitorTrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 
	$(CPP) $(OFLAG)TrashVisitor.exe TrashVisitor.obj VisitorTrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 

DynaTrash.exe: DynaTrash.obj TrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 
	$(CPP) $(OFLAG)DynaTrash.exe DynaTrash.obj TrashPrototypeInit.obj fillBin.obj Trash.obj TrashStatics.obj 


SingletonPattern.obj: SingletonPattern.cpp 
LogFile.obj: LogFile.cpp LogFile.h 
UseLog1.obj: UseLog1.cpp UseLog1.h LogFile.h 
UseLog2.obj: UseLog2.cpp UseLog1.h LogFile.h 
SingletonPattern2.obj: SingletonPattern2.cpp 
FunctionStaticSingleton.obj: FunctionStaticSingleton.cpp 
ShapeFactory1.obj: ShapeFactory1.cpp ..\purge.h 
ShapeFactory2.obj: ShapeFactory2.cpp ..\purge.h 
AbstractFactory.obj: AbstractFactory.cpp 
VirtualConstructor.obj: VirtualConstructor.cpp 
InnerClassIdiom.obj: InnerClassIdiom.cpp 
ObservedFlower.obj: ObservedFlower.cpp Observable.h 
PaperScissorsRock.obj: PaperScissorsRock.cpp ..\purge.h 
BeeAndFlowers.obj: BeeAndFlowers.cpp ..\purge.h 
Recycle1.obj: Recycle1.cpp sumValue.h ..\purge.h 
Recycle2.obj: Recycle2.cpp sumValue.h ..\purge.h 
Trash.obj: Trash.cpp Trash.h 
TrashStatics.obj: TrashStatics.cpp Trash.h Aluminum.h Paper.h Glass.h Cardboard.h 
TrashPrototypeInit.obj: TrashPrototypeInit.cpp Trash.h Aluminum.h Paper.h Glass.h Cardboard.h 
fillBin.obj: fillBin.cpp fillBin.h Fillable.h ..\C01\trim.h ..\require.h 
Recycle3.obj: Recycle3.cpp Trash.h Aluminum.h Paper.h Glass.h fillBin.h sumValue.h ..\purge.h 
Recycle4.obj: Recycle4.cpp Trash.h Aluminum.h Paper.h Glass.h Cardboard.h fillBin.h sumValue.h ..\purge.h 
DDTrashPrototypeInit.obj: DDTrashPrototypeInit.cpp TypedBin.h Aluminum.h Paper.h Glass.h Cardboard.h 
DoubleDispatch.obj: DoubleDispatch.cpp TypedBin.h fillBin.h sumValue.h ..\purge.h 
VisitorTrashPrototypeInit.obj: VisitorTrashPrototypeInit.cpp Visitor.h 
TrashVisitor.obj: TrashVisitor.cpp Visitor.h fillBin.h ..\purge.h 
DynaTrash.obj: DynaTrash.cpp Trash.h fillBin.h sumValue.h ..\purge.h 

