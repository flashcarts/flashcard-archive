function Calculator::Inverse()
// Divides the value 1 by the value in _displayOperand and stores in _displayOperand.
{
	_displayOperand.Assign(_displayOperand.Inverse());
	_operatorChange = true;
	_equalChain = false;
	_operator = 0;
}

function Calculator::Cubed()
// Cubes the value in _displayOperand and stores the result in _displayOperand.
{
	_displayOperand.Assign(_displayOperand.Multiply(_displayOperand.Multiply(_displayOperand)));
	_operatorChange = true;
	_equalChain = false;
	_operator = 0;
}

function Calculator::Pi()
// Stores the value of pi in the _displayOperand.
{
	_displayOperand.Assign(_displayOperand.Pi(_displaySize));
	_equalChain = false;
}

function Calculator::Negative()
// Negates the _dsiaplayOperand. 
{
	if(!_displayOperand.IsZero())
		_displayOperand.Negative();
}

function Calculator::Squareroot()
// Finds the square root of _displayOperand and stores the result in _displayOperand.
{
	_displayOperand.Assign(_displayOperand.Squareroot());
	_operatorChange = true;
	_equalChain = false;
	_operator = 0;
}

function Calculator::Sin()
// Finds the sine(in radians) of the _displayOperand and stores the result in _displayOperand.
{
	_displayOperand.Assign(_displayOperand.Sin());
	_operatorChange = true;
	_equalChain = false;
	_operator = 0;
}

function Calculator::Cos()
// Finds the cosine(in radians) of the _displayOperand and stores the result in _displayOperand.
{
	_displayOperand.Assign(_displayOperand.Cos());
	_operatorChange = true;
	_equalChain = false;
	_operator = 0;
}

function Calculator::Tan()
// Finds the tangent(in radians) of the _displayOperand and stores the result in _displayOperand.
{
	_displayOperand.Assign(_displayOperand.Tan());
	_operatorChange = true;
	_equalChain = false;
	_operator = 0;
}