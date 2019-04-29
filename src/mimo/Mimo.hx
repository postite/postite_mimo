package mimo;
//import ufPostite.strings.StringUtils.*;
import mimo.MimoType;
import mimo.Group;
import mime.Mime;
class Mimo {

	public static function isImage(s:String):Bool{
	var ext:MimoType=Mime.lookup(s);
   	var group:MimeGroup=ext;
   	return group.toGroup()==IMGS;
   }
   public static function isDoc(s:String):Bool{
	   var ext:MimoType=Mime.lookup(s);
   	var group:MimeGroup=ext;
   	
   	return group.toGroup()==DOCS;
   }
   public static function isVideo(s:String):Bool{
   var ext:MimoType=Mime.lookup(s);
   	var group:MimeGroup=ext;
   	return group.toGroup()==VIDS;
   }

}