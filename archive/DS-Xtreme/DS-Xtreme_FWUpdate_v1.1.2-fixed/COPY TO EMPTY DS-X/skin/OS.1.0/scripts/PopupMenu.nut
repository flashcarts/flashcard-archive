
class PopupModel {

	constructor()
	{
		_items = array(0);
	}

	function setItems( items )
	{
		_items = items;
	}
	
	function setSelectedItem( selectedItem )
	{
		_selectedItem = selectedItem;
	}
	
	function getSelectedItem()
	{
		return _selectedItem;
	}

	function getItems()
	{
		return _items;
	}
	
	function getX()
	{
		return _x;
	}
	
	function getY()
	{
		return _y;
	}
	
	_items = null;
	_selectedItem = null;
	_x = 0;
	_y = 0;
}

class PopupMenu {

	//constructor
	constructor()
	{
			_model = PopupModel();
			_dialog = Application.getSceneManager().getDialog("PopupMenu");
	}
	
	function addMenuItem(item)
	{
		_model._items.append(item);
	}
	
	function getSelectedItem()
	{
		return _model.getSelectedItem();
	}
	
	function show(x,y)
	{
		_model._x = x;
		_model._y = y;
		_dialog.setModel(_model);
		_dialog.show();
	}

	//property
	_dialog = null;
  _model = null;
  
}
