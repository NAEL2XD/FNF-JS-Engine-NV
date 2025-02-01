package options;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;
import openfl.Lib;

using StringTools;

class MiscSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Misc';
		rpcTitle = 'Miscellaneous Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Use JS Engine Recharts', //Name
			'If checked, the base game charts will use the JS Engine specific recharts.', //Description
			'JSEngineRecharts', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);

		var option:Option = new Option('Always Play Cutscenes', //Name
			'If checked, cutscenes will always play even if you\nenter the song through Freeplay.', //Description
			'alwaysTriggerCutscene', //Save data variable name
			'bool', //Variable type
			false); //Default value
		addOption(option);

		var option:Option = new Option('Disable Splash Screen', 'If checked, the splash screen gets disabled on startup.', 'disableSplash', 'bool', false);
		addOption(option);
		var option:Option = new Option('FPS Size',
			'Whetever that you want to set the FPS Size.\nRequires a restart & Requires "Disable Splash Screen" to be disabled.', 'fpsSize', 'int', 16);
		addOption(option);
		option.scrollSpeed = 0.25;
		option.minValue = 1;
		option.maxValue = 48;
		option.changeValue = 1;
		option.decimals = 0;

		cameras = [FlxG.cameras.list[FlxG.cameras.list.length-1]];
		
		super();
	}
}