
// This class is used to pulse fade a widget
class PulseFadeEffect {
	//constructor
	constructor( widget )
	{
		fadeEffect = FadeEffect();
		fadeEffect.setTarget(widget);
		fadeEffect.setDuration(800);
		fadeEffect.setEndAlpha(31);
		fadeEffect.onStop(this._OnFadeStop.bindenv(this));
		
		waitEffect = WaitEffect();
		waitEffect.setTarget(widget);
		waitEffect.setDuration(800);
		waitEffect.onStop(this._OnWaitStop.bindenv(this));
		
		_widget = widget;
		_running = false;
	}
	
	//member function
	function _OnFadeStop(event)
	{
		if(_running)
		{
			if(_widget.getAlpha() == 31)
			{
					waitEffect.start();
			}
			else
			{
				fadeEffect.setEndAlpha(31);
				fadeEffect.start();
			}
		}
	}
	
	function _OnWaitStop(event)
	{
		if(_running)
		{
			fadeEffect.setEndAlpha(5);
			fadeEffect.start();
		}	
	}
	
	function start()
	{
		_running = true;
		fadeEffect.start();
	}
	
	function stop()
	{
		_running = false;
	}
	
	//property
	_widget = null;
	_running = null;
	fadeEffect = null;
	waitEffect = null;
}
