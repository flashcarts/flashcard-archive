// This class is a simple example of how to create a scripted effect
class Spinner {

	//constructor
	constructor( label, upbutton, downbutton, maxValue )
	{
		_label = label;
		_upbutton = upbutton;
		_downbutton = downbutton;
		_maxValue = maxValue;
		_touchHeld = false;
		
		_upbutton.onButtonClick(this._OnUpClick.bindenv(this));
		_upbutton.onButtonRepeated(this._OnUpRepeated.bindenv(this));
		_downbutton.onButtonClick(this._OnDownClick.bindenv(this));
		_downbutton.onButtonRepeated(this._OnDownRepeated.bindenv(this));

		_upbutton.onTouchHold(this._OnUpTouchHold.bindenv(this));
		_downbutton.onTouchHold(this._OnDownTouchHold.bindenv(this));

		_touchRepeat = WaitEffect();
		_touchRepeat.setTarget(label);
		_touchRepeat.setDuration(50);
		_touchRepeat.onStop(this._TouchHoldUpdate.bindenv(this));

		label.getParentScene().onTouchRelease(this._OnSceneTouchRelease.bindenv(this));
		label.getParentScene().onTouchMove(this._OnSceneTouchRelease.bindenv(this));
	}
	
	function getValue()
	{
		return _value;
	}
	
	function onValueChanged( callback )
	{
		_valueChangedCallback = callback;
	}
	
	function setValue( value )
	{
		_value = value;
		if(_value > _maxValue)
		{
			_value = _maxValue;
		}
		if(_value < 0)
		{
			_value = 0;
		}
		_label.setText("" + _value);
		
		if(_valueChangedCallback != null)
		{
			_valueChangedCallback();
		}
	}
	
	function _OnUpClick(event)
	{
		if(_value < _maxValue)
		{
			setValue(_value + 1);
		}
	}

	function _OnUpRepeated(event)
	{
		if(_value < _maxValue)
		{
			setValue(_value + 20);
		}
	}

	function _OnDownClick(event)
	{
		if(_value > 0)
		{
			setValue(_value - 1);
		}
	}

	function _OnDownRepeated(event)
	{
		if(_value > 0)
		{
			setValue(_value - 20);
		}
	}

	function _OnUpTouchHold(event)
	{
		if(_value > 0)
		{
			setValue(_value + 1);
			_touchRepeatVal = 10;
			_touchHeld = true;
			_touchRepeat.setDuration(260);
			_repeatInARow = 0;
			_touchRepeat.start();
		}
	}

	function _OnDownTouchHold(event)
	{
		if(_value > 0)
		{
			setValue(_value - 1);
			_touchRepeatVal = -10;
			_touchHeld = true;
			_touchRepeat.setDuration(260);
			_repeatInARow = 0;
			_touchRepeat.start();
		}
	}

	function _OnSceneTouchRelease(event)
	{
		_touchHeld = false;
	}

	function _TouchHoldUpdate(event)
	{
		if(_touchHeld)
		{
			local oldValue = _value;
			setValue(_value + _touchRepeatVal);

			if(oldValue != _value)
			{
				_repeatInARow++;
				if(_repeatInARow < 10)
					_touchRepeat.setDuration(80);
				else
					_touchRepeat.setDuration(40);
				_touchRepeat.start();
			}
		}
	}

	//property
	_label = null;
	_upbutton = null;
	_downbutton = null;
	_maxValue = 100;
	_value = 0;
	_valueChangedCallback = null;
	_touchHeld = null;
	_touchRepeat = null;
	_touchRepeatVal = null;
	_repeatInARow = null;
	
}
