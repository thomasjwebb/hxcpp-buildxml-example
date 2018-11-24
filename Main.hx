package;


class Main {
  private static function callback(a:Int, b:Float)
  {
    trace(a);
    trace(b);
  }

  public static function main()
  {
    trace('hello');
    var cppClass = CppClass.create();
    cppClass.callF(cpp.Callable.fromStaticFunction(callback));
  }
}

