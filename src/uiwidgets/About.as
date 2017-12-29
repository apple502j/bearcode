package uiwidgets {
import flash.display.*;
import flash.events.*;
import flash.geom.*;
import flash.net.*;
import flash.text.*;
import flash.utils.ByteArray;

import ui.parts.UIPart;

import util.*;

public class About extends Sprite {
    private var base:Shape;
    public function About(){
        addChild(base=new Shape());
		setWidthHeight(240, 60);
		addTexts();
    }
    private function setWidthHeight(w:int, h:int):void {
    	var g:Graphics = base.graphics;
    	g.clear();
    	g.beginFill(CSS.white);
    	g.drawRect(0, 0, w, h);
    	g.endFill();
    }
	private function makeLabel(s:String, fontSize:int, x:int = 0, y:int = 0, bold:Boolean = false, multi:Boolean = false):TextField {
		var tf:TextField = new TextField();
		tf.selectable = false;
		tf.defaultTextFormat = new TextFormat(CSS.font, fontSize, CSS.textColor, bold);
		tf.autoSize = TextFieldAutoSize.LEFT;
		tf.htmlText = s;
		tf.x = x;
		tf.y = y;
		tf.multiline = multi;
		addChild(tf);
		return tf;
	}
    private function addTexts():void{
        makeLabel("BearCode v1.0 by apple502j",12);
        makeLabel("BearCode is a Scratch mod. Scratch is developed by the Lifelong Kindergarten Group at the MIT Media Lab. See <a href='http://scratch.mit.edu'>http://scratch.mit.edu</a>",12,0,30,true,true);
        makeLabel("BearCode is licensed under GPL v3. License is here: <a href='https://www.gnu.org/licenses/gpl-3.0.txt'>https://www.gnu.org/licenses/gpl-3.0.txt</a>",12,0,60,true);
        makeLabel("Source code: <a href='https://github.com/apple502j/bearcode'>GitHub</a>",12,0,90,true);
        makeLabel("This program uses Kosyokai's KKM Analog TV Font (CC-BY-SA 4.0 International) <a href='https://booth.pm/ja/items/15234'>here</a>",12,0,120,true);
        makeLabel("Credits:<a href='https://scratch.mit.edu/info/credits/'>Scratch developers,translaters, and the Scratch Team<a>",12,0,150,true);
        makeLabel("This program has <a href='http://logiclab.blog.jp/archives/scratch_modding2.html'>inoking's</a>, <a href='https://scratch.mit.edu/discuss/post/2750420/'>MMGISS's</a>,<a href='https://scratch.mit.edu/discuss/post/2730151/'>MMGISS_sub's</a> code.",12,0,180,true);
        makeLabel("This program uses Sazanami Gothic and Mincho font (3-Clauses BSD) <a href='https://ja.osdn.net/projects/efont/releases/10087'>here</a>",12,0,210,true);
    }
}
}