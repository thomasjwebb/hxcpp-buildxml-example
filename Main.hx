package;

class EncapsulatingClass {
  private var cppClass:CppClass;
  
  private static function callback(a:Int, b:Float) {
    trace(a);
    trace(b);
  }

  public function new() {
    cppClass = CppClass.create();
    cppClass.callF(cpp.Callable.fromStaticFunction(callback));
  }
}

class Main {
  
  // private static function callback(a:Int, b:Float) {
  //   trace(a);
  //   trace(b);
  // }

  public static function main() {
    trace('hello');
    var c = new EncapsulatingClass();
    // var cppClass = CppClass.create();
    // cppClass.callF(cpp.Callable.fromStaticFunction(callback));
  }
}

