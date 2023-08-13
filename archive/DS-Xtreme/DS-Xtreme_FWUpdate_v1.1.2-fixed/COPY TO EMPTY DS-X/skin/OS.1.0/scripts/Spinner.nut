// This class is a simple example of how to create a scripted effect
class Spinner {

	//constructor
	constructor( label, upbutton, downbutton, maxValue )
	{
		_label = label;
		_upbutton = upbutton;
		_downbutton = downbutton;
		_maxValue = maxValue;
		
		_upbutton.onButtonClick(this._OnUpClick.bindenv(this));
		_upbutton.onButtonRepeated(this._OnUpRepeated.bindenv(this));
		_downbutton.onButtonClick(this._OnDownClick.bindenv(this));
		_downbutton.onButtonRepeated(this._OnDownRepeated.bindenv(this));
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
			setValue(_value + 1);
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
			setValue(_value - 1);
		}
	}

	//property
	_label = null;
	_upbutton = null;
	_downbutton = null;
	_maxValue = 100;
	_value = 0;
	_valueChangedCallback = null;
	
}
