package;

import haxe.io.Path;
import haxe.macro.Expr;
import haxe.macro.Context;

using haxe.macro.PositionTools;


class Include {

    macro public static function xml(_name:String, _relative_root:String='./'):Array<Field> {

        var _pos =  Context.currentPos();
        var _pos_info = _pos.getInfos();
        var _class = Context.getLocalClass();

        var _source_path = Path.directory(_pos_info.file);
        if( !Path.isAbsolute(_source_path) ) {
            _source_path = Path.join([Sys.getCwd(), _source_path]);
        }

        _source_path = Path.normalize(_source_path);

        var _linc_lib_path = Path.normalize(Path.join([_source_path, _relative_root]));
        var _linc_include_path = Path.normalize(Path.join([ _linc_lib_path, '${_name}.xml' ]));
        //var _linc_lib_var = 'LINC_${_lib.toUpperCase()}_PATH';

        //var _define = '<set name="$_linc_lib_var" value="$_linc_lib_path/"/>';
        //var _import_path = '$${$_linc_lib_var}linc/linc_${_lib}.xml';
        //var _import = '<include name="$_import_path" />';
	var _import = '<include name="$_linc_include_path" />';

        _class.get().meta.add(":buildXml", [{ expr:EConst( CString( '$_import' ) ), pos:_pos }], _pos );
        
        return Context.getBuildFields();

    } //xml

} //Linc
