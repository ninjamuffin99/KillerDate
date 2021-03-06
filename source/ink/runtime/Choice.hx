package ink.runtime;
import ink.runtime.CallStack.Thread;

/**
 * DONE!
 *  /// A generated Choice from the story.
    /// A single ChoicePoint in the Story could potentially generate
    /// different Choices dynamically dependent on state, so they're
    /// separated.
 * @author Glidias
 */
class Choice extends RObject
{
	/**
	   The main text to presented to the player for this Choice.
	**/
	public var text:String;


	/**
		The target path that the Story should be diverted to if
		this Choice is chosen.
	**/
	public var pathStringOnChoice(get, null):String;
	function get_pathStringOnChoice():String 
	{
		return  choicePoint.pathStringOnChoice;
	}

	/**
		The original index into currentChoices list on the Story when
		this Choice was generated, for convenience.
	**/
	public var index:Int;

	public var  choicePoint:ChoicePoint;
	public  var  threadAtGeneration:Thread;
	public var  originalThreadIndex:Int;

	/**
	   Only used temporarily for loading/saving from JSON
	**/ 
	public  var  originalChoicePath:String;

	
	public function new() 
	{
			super();
		
	}
	
	public static function create(choice:ChoicePoint):Choice {
		var me:Choice = new Choice();
		me.choicePoint = choice;
		return me;
	}
	

	
}