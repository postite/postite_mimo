import haxe.io.Path;
import sys.FileSystem;
import utest.Assert;
class SimpleTest extends utest.Test{
    var images:Array<String>;
    var autres:Array<String>;
    public function new(){
        super();
        images=FileSystem.readDirectory("./images");
        autres=FileSystem.readDirectory("./autres");
        
    }
    function testTest(){
        Assert.isTrue(true);
        for (f in images){
            trace(Path.extension(f));
           Assert.isTrue(Mimo.isImage(f));           
        }
       
    }

   
  
}