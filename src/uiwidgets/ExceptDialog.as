package uiwidgets {
import flash.display.*;
import flash.events.*;
import flash.geom.*;
import flash.net.*;
import flash.text.*;
import flash.utils.ByteArray;

import ui.parts.UIPart;

import util.*;

public class ExceptDialog extends Sprite {
    private var base:Shape;
    public function ExceptDialog(exceptStr:String){
        addChild(base=new Shape());
		setWidthHeight(240, 60);
		addTexts(exceptStr);
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
    private function addTexts(exceptStr:String):void{
        makeLabel("Error:"+exceptStr,12,1);
        makeLabel("This script was stopped.",12,0,30,1);
    }
}
}