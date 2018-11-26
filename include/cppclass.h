#include <iostream>

typedef void (*Callback)(int, double);

class CppClass
{
  int b;
public:
  CppClass() { b = 3; };
  ~CppClass() { std::cerr << "destructor called" << std::endl; };
  void callF(Callback callback) { callback(b, 2.3f); };
};
