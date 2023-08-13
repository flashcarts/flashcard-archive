class Scrollbar
{

	constructor(list, scrollbar_widget, texture_list, page_size)
	{
			// Store widgets
		_scrollbarWidget = scrollbar_widget;
		_barWidget = scrollbar_widget.getWidget("bar");
		_scrollWidget = scrollbar_widget.getWidget("scroller");
		_upArrow = scrollbar_widget.getWidget("uparrow");
		_downArrow = scrollbar_widget.getWidget("downarrow");
		_list = list;

			// Hook events
		_list.onSelectedIndexChanged(this.OnListSelectedIndexChanged.bindenv(this));

		//_scrollbarWidget.onTouchMove(this.OnBarTouchMove.bindenv(this));
		_scrollbarWidget.onTouchPress(this.OnBarTouch.bindenv(this));
		_scrollbarWidget.onTouchHold(this.OnBarTouchHold.bindenv(this));

		_scrollbarWidget.getParent().onTouchMove(this.OnSceneTouchMove.bindenv(this));
		_scrollbarWidget.getParent().onTouchRelease(this.OnTouchRelease.bindenv(this));

			// Create move effect for scroller
		_scrollMove = MoveToEffect();
		_scrollMove.setTarget(_scrollWidget);
		_scrollMove.setDuration(100);

		_repeatWait = WaitEffect();
		_repeatWait.setTarget(_barWidget);
		_repeatWait.setDuration(200);
		_repeatWait.onStop(this.OnRepeatWaitStop.bindenv(this));

			// Initialize the rest of the data members
		_capSize = _upArrow.getHeight();
		_upperLimit = _scrollbarWidget.getY() + _capSize;
		_lowerLimit = _scrollbarWidget.getY() + _scrollbarWidget.getHeight() - _capSize - 3;
		_lineCount = _list.getNumItems();

		if(_lineCount != 0)
			_regionSpace = (((_lowerLimit - _upperLimit + 1)*100) / _lineCount);
		else
			_regionSpace = 0;

		if(_regionSpace < 100)
			_regionSpace = 100;

			// In the form [0]:bar [1]:scroller [2]:up arrow [3]:down arrow 
			//             [4]: up arrow active [5]: down arrow active
		_textureList = texture_list;

		_scrollWidget.setTexture(_textureList[1]);
		_scrollWidget.setPalette(_textureList[1]);

		_pageSize = page_size;

		_yLoc = _scrollbarWidget.getY() + _upArrow.getHeight() + 1;
	}

	function OnSceneTouchMove(event)
	// Called when any touchMove happens in the scene.
	{
		if( (event.getX() >= _scrollbarWidget.getX()) && (event.getX() <= (_scrollbarWidget.getX() + _scrollbarWidget.getWidth())) )
			if( (event.getY() >= _scrollbarWidget.getY()) && (event.getY() <= (_scrollbarWidget.getY() + _scrollbarWidget.getHeight())) )
				_arrowIsHeld = "bar";
			else
				_arrowIsHeld = "none";
		else
			_arrowIsHeld = "none";

		_yLoc = event.getY();

		SetArrowTexture("up", _textureList[2]);
		SetArrowTexture("down", _textureList[3]);

		if( (event.getX() > 200 ) && (_touchOnBar) )
		{
			Action(event.getY());
		}
	}

	function OnTouchRelease(event)
	// Called when a touch release event happens anywhere in the scene.
	{
		_touchOnBar = false;
		_arrowIsHeld = "none";

		SetArrowTexture("up", _textureList[2]);
		SetArrowTexture("down", _textureList[3]);

		_list.focus();
	}

	function OnBarTouchHold(event)
	// Called when a touchHold event happens on the scrollbar.
	{
		if( (event.getY() < _upperLimit) && (_list.getSelectedIndex() > 0) )
			_arrowIsHeld = "top";

		else if( (event.getY() > _lowerLimit) && (_list.getSelectedIndex() < (_lineCount - 1)) )
			_arrowIsHeld = "bottom";

		else
			_arrowIsHeld = "bar";

		if(_arrowIsHeld != "none")
		{
			_yLoc = event.getY();
			_repeatWait.start();
		}
	}

	function OnBarTouch(event)
	// Called when the scrollbar is touched.
	{
		_touchOnBar = true;

		CheckTouchZone(event.getY());

		Action(event.getY());

		_arrowIsHeld = "bar";
		_yLoc = event.getY();

		if( (event.getY() < _upperLimit) && (_list.getSelectedIndex() > 0) )
		{
			_list.setSelected(_list.getSelectedIndex() - 1);
			SetArrowTexture("up", _textureList[4]);
		}
		else if( (event.getY() > _lowerLimit) && (_list.getSelectedIndex() < (_lineCount - 1)) )
		{
			_list.setSelected(_list.getSelectedIndex() + 1);
			SetArrowTexture("down", _textureList[5]);
		}
	}

	function OnBarTouchMove(event)
	// Called when a touch move event happens on the scrollbar.
	{
		_touchOnBar = true;

		if( (event.getY() < _lowerLimit) && (event.getY() > _upperLimit) )
		{
			_arrowIsHeld = "none";
			_yLoc = event.getY();
			SetArrowTexture("up", _textureList[2]);
			SetArrowTexture("down", _textureList[3]);
		}
		else
			_arrowIsHeld = "none";

		Action(event.getY());
	}

	function OnRepeatWaitStop(event)
	// Called when _repeatWait stops.
	{
		if(_arrowIsHeld == "top")
		{
			_list.setSelected(_list.getSelectedIndex() - 1);
			_repeatWait.start();
		}
		else if(_arrowIsHeld == "bottom")
		{
			_list.setSelected(_list.getSelectedIndex() + 1);
			_repeatWait.start();
		}
		else if(_arrowIsHeld == "bar")
		{
			Action(_yLoc);
			_repeatWait.start();
		}

	}

	function OnListSelectedIndexChanged(event)
	// Called when the selected list index changes.
	{
		if(_list.getNumItems() != _lineCount)
			UpdateByListCount();

		SetScrollerByIndex(event.getNewIndex());
	}

	function Action(_y)
	// Finds appropriate index based on a y position on the bar. Selects the new index in the list.
	{
		if(_list.getNumItems() != _lineCount)
			UpdateByListCount();

		local index = ( (_y - _scrollbarWidget.getY() - _capSize) * 100) / (_regionSpace);

		if(index > (_list.getSelectedIndex() + _pageSize - 1) )
			index = _list.getSelectedIndex() + _pageSize;
		else if(index < (_list.getSelectedIndex() - _pageSize + 1) )
			index = _list.getSelectedIndex() - _pageSize;

		if(index >= _lineCount)
			index = _lineCount - 1;
		else if(index < 0)
			index = 0;

		if( (index < _lineCount) && (!_touchOnCap) )
			_list.setSelected(index);
	}	

	function UpdateByListCount()
	// Updates data members according to the number of items in the list.
	{
		_lineCount = _list.getNumItems();

		if(_lineCount != 0)
			_regionSpace = (((_lowerLimit - _upperLimit + 3)*100) / _lineCount);
		else
			_regionSpace = 0;

		if(_regionSpace < 100)
			_regionSpace = 100;

		local scrollerHeight = _regionSpace / 100;

		if(scrollerHeight < 3)
			scrollerHeight = 3;

		_scrollWidget.setHeight(scrollerHeight);

	}

	function SetScrollerByIndex(index)
	// Sets the scroller position according to the current selected index in the list.
	{
		if(index != (_lineCount - 1))
		{
			local y_dest = _upArrow.getHeight() + ((_regionSpace * index)/ 100);

			_scrollMove.setDestination(_scrollWidget.getX(), y_dest);
			_scrollMove.start();
		}

		else
		{
			local y_dest = _scrollbarWidget.getHeight() - _capSize - _scrollWidget.getHeight();

			_scrollMove.setDestination(_scrollWidget.getX(), y_dest);
			_scrollMove.start();
		}
	}

	function CheckTouchZone(_y)
	// Determines if the touch occurs on a cap (the arrows).
	{
		if( (_y > _lowerLimit) || (_y < _upperLimit) )
			_touchOnCap = true;
		else
			_touchOnCap = false;
	}

	function SetVisible(val)
	// Sets the visibility of all scrollbar widgets.
	{
		_barWidget.setVisible(val);
		_scrollWidget.setVisible(val);
		_upArrow.setVisible(val);
		_downArrow.setVisible(val);
	}

	function SetArrowTexture(who, tex_idx)
	// Swaps an arrow texture.
	{
		if(who == "up")
		{
			_upArrow.setTexture(tex_idx);
			_upArrow.setPalette(tex_idx);
		}
		else if(who == "down")
		{
			_downArrow.setTexture(tex_idx);
			_downArrow.setPalette(tex_idx);
		}
	}

		// Widget data members
	_barWidget = null;
	_scrollWidget = null;
	_scrollbarWidget = null;
	_upArrow = null;
	_downArrow = null;

		// Effect data members
	_repeatWait = null;
	_scrollMove = null;

		// Data members
	_lowerLimit = null;
	_upperLimit = null;
	_lineCount = null;
	_regionSpace = null;
	_capSize = null;
	_arrowIsHeld = null;
	_list = null;
	_touchOnCap = null;
	_touchOnBar = null;
	_arrowTouch = null;
	_textureList = null;
	_pageSize = null;
	_yLoc = null;
}