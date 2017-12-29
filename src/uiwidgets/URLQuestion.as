/*package uiwidgets {
import flash.display.*;
import flash.events.*;
import flash.geom.*;
import flash.net.*;
import flash.text.*;
import flash.utils.ByteArray;

import ui.parts.UIPart;

import util.*;

public class URLQuestion extends Sprite {
    private var base:Shape;
    private var linkToURL:String;
    public function URLQuestion(openURL:String){
        addChild(base=new Shape());
        linkToURL=openURL;
		setWidthHeight(240, 60);
		addTexts(openURL);
    }
    private function setWidthHeight(w:int, h:int):void {
    	var g:Graphics = base.graphics;
    	g.clear();
    	g.beginFill(CSS.white);
    	g.drawRect(0, 0, w, h);
    	g.endFill();
    }
	private function makeLabel(s:String, fontSize:int, x:int = 0, y:int = 0, bold:Boolean = false):TextField {
		var tf:TextField = new TextField();
		tf.selectable = false;
		tf.defaultTextFormat = new TextFormat(CSS.font, fontSize, CSS.textColor, bold);
		tf.autoSize = TextFieldAutoSize.LEFT;
		tf.text = s;
		tf.x = x;
		tf.y = y;
		addChild(tf);
		return tf;
	}
    private function addTexts(openURL:String):void{
        var URLFormat:TextFormat=new TextFormat();
        var URLField:TextField;
        URLFormat.color=0x0000CC;
        URLFormat.underline=true;
        makeLabel("WARNING",12,0,0,true);
        makeLabel("URL from Script:",12,0,30);
        URLField=makeLabel(openURL,12,0,60,false);
        URLField.setTextFormat(URLFormat);
        URLField.addEventListener(MouseEvent.CLICK,openURLHandler);
    }
    private function openURLHandler(e:MouseEvent):void{
        navigateToURL(new URLRequest(linkToURL),"_blank");
    }
}
}*/