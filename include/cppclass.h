typedef void (*Callback)(int, double);

class CppClass
{
public:
  CppClass() {};
  void callF(Callback callback) { callback(1, 2.3f); };
};
