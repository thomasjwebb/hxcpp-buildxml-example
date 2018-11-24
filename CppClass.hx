package;

@:build(Include.xml('BuildFile'))
@:include("./include/cppclass.h")
@:native("CppClass")
@:structAccess
extern class CppClass {
  @:native("CppClass")
  public static function create():CppClass;
  public function callF(callback:cpp.Callable<(a:Int, b:Float)->Void>):Void;
}
