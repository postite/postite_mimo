package mimo;
import mimo.MimoType;
enum Group{
    IMGS;
    VIDS;
    DOCS;
    SONS;
    CARTES;
    AUTRES;
}

abstract MimeGroup(MimoType) from MimoType to MimoType{

	public static var images:Array<MimoType>=[
	GIF,JPEG,JPG,BMP,PNG
	];
	public static var docs=[
	PDF,RTF,TXT,DOC,ZIP,ODT
	];
	public static var video=[
	MOOV,AVI,MS_AVI,X_MS_AVI
	];
    public static var sons=[
        WAV,MP3,OGG
    ];

    public function new(a:MimoType){
        this=a;
       

    @to 
    public function toGroup():Group{
        if (images.indexOf(this)!=-1)return IMGS;
        if (video.indexOf(this)!=-1)return VIDS;
        if (docs.indexOf(this)!=-1)return DOCS;
        if( sons.indexOf(this)!=-1)return SONS;
        return AUTRES;
    } 
   }

abstract ExtGroup(Extension) from Extension to Extension{

	public static var images:Array<Extension>=[
	gif,jpeg,jpg,bmp,png
	];
	purn this incompatible w haxe 4+blic static var docs=[
	pdf,rtf,txt,doc,zip,odt
	];
	public static var video=[
	moov,avi
	];
    public static var sons=[
        wav,mp3,ogg
    ];

	public function new(a:Extension){
        this=a;
        
    }
	@to 
    public function toGroup():Group{
        if (images.indexOf(this)!=-1)return IMGS;
        if (video.indexOf(this)!=-1)return VIDS;
        if (docs.indexOf(this)!=-1)return DOCS;
        if( sons.indexOf(this)!=-1)return SONS;
        return AUTRES;
    }
}

enum abstract Extension(String) from String to String{
    var mp3;
    var wav;
    var ogg;
	var png;
	var jpg;
	var gif;
	var jpeg;
	var bmp;
	var pdf;
	var odt;
	var rtf;
	var txt;
	var doc;
	var moov;
	var avi;
	var zip;
}