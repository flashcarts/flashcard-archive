class XWidget
// The XWidget class provides a means to move a widget through
//  dx (change in x) and dy (change in y) attributes.
{
	constructor(widget, x, y, dx, dy)
	{
		_widget = widget;

		_widgetMove = MoveToEffect();
		_widgetMove.setTarget(_widget);

		_updateDelay = WaitEffect();
		_updateDelay.setTarget(_widget);
		_updateDelay.setDuration(10);
		_updateDelay.onStop(this._update.bindenv(this));

		_x = x;
		_y = y;
		_dx = dx;
		_dy = dy;

		_running = false;

		_tick = 0;
		_tickSet = 0;
	}

	// Starts an XWidget in motion
	function start()
	{
		_running = true;

		init();

		_updateDelay.start();
	}

	// Stops an XWidget
	function stop()
	{
		_running = false;
		_widgetMove.stop();
		_updateDelay.stop();
	}

	// Determines the next location for the widget
	function ResolveMove()
	{
		_x = _widget.getX();
		_y = _widget.getY();

		if((_tick % _dxRep) == 0)
			_x = _x + _xPar;

		if((_tick % _dyRep) == 0)
			_y = _y + _yPar;

		_x += _dxBuff;
		_y += _dyBuff;
	}

	// Called when updateDelay stops
	//  Used to periodically update the widget's position
	function _update(event)
	{
		increment();

		if(_running)
		{
			_widget.setX(_x);
			_widget.setY(_y);
			_updateDelay.start();
		}
	}

	// Performs the next move
	function increment()
	{
		if(_tick == 1000)
		{

			_tick = 0;
			_dxBuff = _dx / 1000;
			_dyBuff = _dy / 1000;
			_dxRep = 1000 / (_dx % 1000);
			_dyRep = 1000 / (_dy % 1000);
			if(_dx < 0)
			{
				_dxRep *= -1;
				_xPar = -1;
			}
			else
				_xPar = 1;
			if(_dy < 0)
			{
				_dyRep *= -1;
				_yPar = -1;
			}
			else
				_yPar = 1;
		}
		else
			_tick++;


		ResolveMove();

	}

	// Sets the widget and initializes data members
	function init()
	{
		_widget.setX(_x);
		_widget.setY(_y);

		_tick = 0;
		_dxBuff = _dx / 1000;
		_dyBuff = _dy / 1000;
		_dxRep = 1000 / (_dx % 1000);
		_dyRep = 1000 / (_dy % 1000);
		if(_dx < 0)
		{
			_dxRep *= -1;
			_xPar = -1;
		}
		else
			_xPar = 1;
		if(_dy < 0)
		{
			_dyRep *= -1;
			_yPar = -1;
		}
		else
			_yPar = 1;


	}


	_widget = null;
	_widgetMove = null;
	_updateDelay = null;
	_dx = null;
	_dy = null;
	_x = null;
	_y = null;
	_running = null;

	_tickSet = null;
	_tick = null;

	_dxBuff = null;
	_dyBuff = null;
	_yPar = null;
	_xPar = null;
	_dxRep = null;
	_dyRep = null;

}