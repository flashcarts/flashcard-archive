
// This class is a simple example of how to create a scripted effect
class ColorEffect {

	//constructor
	constructor()
	{
		_scriptedEffect = ScriptedEffect();

		_scriptedEffect.onStop(this._OnEffectStop.bindenv(this));
		_scriptedEffect.onUpdate(this._OnEffectUpdate.bindenv(this));
		
		_scriptedEffect.setStartValue(0);
		_scriptedEffect.setEndValue(31);	
	}
	
	function _OnEffectStop(event)
	{
		if(_running)
		{
			if(_directionToggle)
			{
				_scriptedEffect.setStartValue(31);
				_scriptedEffect.setEndValue(0);
			}
			else
			{
				_scriptedEffect.setStartValue(0);
				_scriptedEffect.setEndValue(31);
			}
			
			_directionToggle = !_directionToggle;
			_scriptedEffect.start();
		}
	}
	
	function _OnEffectUpdate(target, currentValue)
	{
		print("Setting color to " + currentValue);
		target.setColor(31,31,currentValue);
	}
	
	function setTarget(widget)
	{
		_scriptedEffect.setTarget(widget);
	}
	
	function setDuration(duration)
	{
		_scriptedEffect.setDuration(duration);
	}
	
	function start()
	{
		_running = true;
		_scriptedEffect.start();
	}
	
	function stop()
	{
		_running = false;
		_scriptedEffect.stop();
	}
	
	//property
	_scriptedEffect = null;
	_directionToggle = true;
	_running = false;
}
