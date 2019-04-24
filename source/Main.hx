package;

import djFlixel.FLS;
import djFlixel.MainTemplate;
import flixel.FlxGame;
import openfl.Lib;
import openfl.display.Sprite;
import openfl.events.Event;

class Main extends MainTemplate
{
	override function init() 
	{
		ZOOM = 1;
		RENDER_WIDTH = 256;
		RENDER_HEIGHT = 239;
		INITIAL_STATE = PlayState;
		FPS = 60;
		
		super.init();
	}
	
	
	public function new()
	{
		FLS.extendedClass = Reg;
		super();
	}//---------------------------------------------------;
	// --
	public static function main():Void
	{	
		Lib.current.addChild(new Main());
	}//---------------------------------------------------;
}
