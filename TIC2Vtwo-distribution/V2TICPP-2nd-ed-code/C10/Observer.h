//: C10:Observer.h
// From Thinking in C++, 2nd Edition
// Available at http://www.BruceEckel.com
// (c) Bruce Eckel 2000
// Copyright notice in Copyright.txt
// The Observer interface
#ifndef OBSERVER_H
#define OBSERVER_H

class Observable;
class Argument {};

class Observer {
public:
  // Called by the observed object, whenever 
  // the observed object is changed:
  virtual void 
  update(Observable* o, Argument * arg) = 0;
};
#endif // OBSERVER_H ///:~
