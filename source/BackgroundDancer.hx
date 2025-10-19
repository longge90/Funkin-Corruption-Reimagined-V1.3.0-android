package;

import flixel.FlxSprite;

class BackgroundDancer extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		frames = Paths.getSparrowAtlas("limo3/henchmen");
		animation.addByPrefix('dance', 'henchmen', 24, false);
		animation.play('dance');
		antialiasing = ClientPrefs.globalAntialiasing;
	}

	var danceDir:Bool = false;

	public function dance():Void
	{
			animation.play('dance', true);
	}
}
