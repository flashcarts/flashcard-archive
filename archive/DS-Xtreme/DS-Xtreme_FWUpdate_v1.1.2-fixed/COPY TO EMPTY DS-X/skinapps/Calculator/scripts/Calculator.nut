class Calculator
// Holds operands and handles calculator button input logic.
{
	constructor(displaySize)
	{
		_displayOperand = Operand(displaySize);
		_bankOperand = Operand(displaySize);
		_memoryOperand = Operand(displaySize);

		_displaySize = displaySize;
		_operatorChange = false;
		_equalChain = false;
		_operator = 0;
	}

	_displayOperand = null;
	_bankOperand = null;
	_memoryOperand = null;

	_displaySize = null;
	_operatorChange = null;
	_equalChain = null;
	_operator = null;
}

function Calculator::DigitEntry(num)
// Enters a new digit into the _displayOperand.
{
	if( (_operatorChange) || (_equalChain) )
	{	
		if(_equalChain == true)
		{
			_bankOperand.Reset();
			_operator = 0;
		}

		_displayOperand.Reset();

		_equalChain = false;
		_operatorChange = false;
	}

		_displayOperand.PostDigit(num);
}

function Calculator::DisplayAsString()
// Returns a string representation of the _displayOperand.
{
	return _displayOperand.AsString();
}

function Calculator::Decimal()
// Enters a decimal point into the _displayOperand.
{
	if( (_operatorChange) || (_equalChain) )
	{
		if(_equalChain == true)
			_bankOperand.Reset();

		_displayOperand.Reset();

		_equalChain = false;
		_operatorChange = false;
	}

	_displayOperand.Decimal();
}


function Calculator::ClearAll()
// Resets all data members, except _displaySize.
{
	_displayOperand.Reset();
	_bankOperand.Reset();
	_memoryOperand.Reset();

	_operator = 0;
	_operatorChange = false;
	_equalChain = false;
}

function Calculator::Clear()
// Clears all data members, except the _memoryOperand and _displaySize.
{
	_displayOperand.Reset();
	_bankOperand.Reset();

	_operator = 0;
	_operatorChange = false;
	_equalChain = false;
}

function Calculator::DoOperation()
// Does operation between _displayOperand and _bankOperand, using current operator.
{
	if(_operator == 1)
		_displayOperand.Assign( _bankOperand.Add(_displayOperand) );
	else if(_operator == 2)
		_displayOperand.Assign( _bankOperand.Subtract(_displayOperand) );
	else if(_operator == 3)
		_displayOperand.Assign( _bankOperand.Multiply(_displayOperand) );
	else if(_operator == 4)
		_displayOperand.Assign( _bankOperand.Divide(_displayOperand) );
}

function Calculator::PostOperator(num)
// Does operation if needed, then posts the new entered operator.
{
	if( (_operatorChange == false) && (_operator != 0) && (_equalChain == false) )
		DoOperation();

	_bankOperand.Assign(_displayOperand);
	_operatorChange = true;
	_equalChain = false;
	_operator = num;
}

function Calculator::Add()
// Posts operator with value of 1.
{
	PostOperator(1);
}

function Calculator::Subtract() 
// Posts operator with value of 2.
{
	PostOperator(2);
}

function Calculator::Multiply() 
// Posts operator with value of 3.
{
	PostOperator(3);
}

function Calculator::Divide() 
// Posts operator with value of 4.
{
	PostOperator(4);
}

function Calculator::Equal()
// Does operation, if there is one to be done, between _displayOperand and _bankOperand.
{
	local tmp = Operand(_displaySize);

	if(_equalChain)
	{
		tmp.Assign(_bankOperand);
		_bankOperand.Assign(_displayOperand);
		_displayOperand.Assign(tmp);
	}
	else
		tmp.Assign(_displayOperand);


	DoOperation();

	_bankOperand.Assign(tmp);
	_equalChain = true; 
}


function Calculator::Memory()
// Assigns the value of _displayOperand to _memoryOperand. 
{
	_memoryOperand.Assign(_displayOperand);
	_operatorChange = false;
	_equalChain = false;
}

function Calculator::MemoryRecall() 
// Assigns the value of _memoryOperand to _displayOperand.
{
	_displayOperand.Assign(_memoryOperand);
	_operatorChange = false;
	_equalChain = false;
}

function Calculator::MemoryPlus() 
// Adds _displayOperand to _bankOperand and stores the result in _memoryOperand.
{
	_memoryOperand.Assign( _memoryOperand.Add(_displayOperand) );
	_operatorChange = false;
	_equalChain = false;
}

function Calculator::Square() 
// Squares the value in _displayOperand and stores the value in _displayOperand.
{
	_displayOperand.Assign( _displayOperand.Multiply(_displayOperand) );
	_operatorChange = true;
	_equalChain = false;
}

function Calculator::Backspace() 
// Removes the last entered digit.
{
	if( (_equalChain == false) && (_operatorChange == false) )
		_displayOperand.UnPost();
}