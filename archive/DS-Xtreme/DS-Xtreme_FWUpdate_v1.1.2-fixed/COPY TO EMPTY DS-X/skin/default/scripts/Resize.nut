class Resize
{
	constructor(widget, width_list, height_list, duration_list)
	{

		_widget = widget;
		_widthList = width_list;
		_heightList = height_list;
		_durationList = duration_list;

		_waitEffect = WaitEffect();
		_waitEffect.setTarget(_widget);
		_waitEffect.setDuration(25);
		_waitEffect.onStop(this._update.bindenv(this));

		_running = false;

		_tick = 0;

		_direction = 1;
	}

	function start()
	{
		_running = true;
		_waitEffect.setDuration(_durationList[_tick]);
		_widget.setWidth(_widthList[_tick]);
		_widget.setHeight(_heightList[_tick]);
		_waitEffect.start();
	}

	function stop()
	{
		_running = false;
		_waitEffect.stop();
	}

	function _update(event)
	{
		if(_running)
		{
			if( ( (_tick < (_durationList.len() - 1) ) && (_direction == 1) ) || ( (_tick > 0 ) && (_direction == -1) ) )
			{
				_tick += _direction;

				_widget.setWidth(_widthList[_tick]);
				_widget.setHeight(_heightList[_tick]);

				_waitEffect.setDuration(_durationList[_tick]);

				_waitEffect.start();
			}
			else
				_running = false;
		}
	}

	function Frame(tick)
	{
		_widget.setWidth(_widthList[tick]);
		_widget.setHeight(_heightList[tick]);
	}

	_widget = null;

	_waitEffect = null;

	_widthList = null;
	_heightList = null;
	_durationList = null;

	_running = null;
	_tick = null;

	_direction = null;
}

// SynchResize is used to sychronize multiple resize effects
class SyncResize
{
	constructor(resize_list)
	{
		_resizeList = resize_list;
		_durationList = resize_list[0]._durationList;

		_waitEffect = WaitEffect();
		_waitEffect.setTarget(resize_list[0]._widget);
		_waitEffect.setDuration(25);
		_waitEffect.onStop(this._update.bindenv(this));

		_tick = 0;
		_direction = 1;
		_running = false;
	}

	function start()
	{
		_running = true;
		for(local i = 0; i < _resizeList.len(); i++)
			_resizeList[i].Frame(_tick)
		_waitEffect.setDuration(_durationList[_tick]);
		_waitEffect.start();
	}

	function stop()
	{
		_running = false;
		_waitEffect.stop();
	}

	function _update(event)
	{
		if(_running)
		{
			if( ( (_tick < (_durationList.len() - 1) ) && (_direction == 1) ) || ( (_tick > 0 ) && (_direction == -1) ) )
			{
				_tick += _direction;

				for(local i = 0; i < _resizeList.len(); i++)
					_resizeList[i].Frame(_tick);

				_waitEffect.setDuration(_durationList[_tick]);

				_waitEffect.start();
			}
			else
				_running = false;
		}
	}
	

	_resizeList = null;
	_durationList = null;
	_waitEffect = null;
	_tick = null;
	_direction = null;
	_running = null;
}