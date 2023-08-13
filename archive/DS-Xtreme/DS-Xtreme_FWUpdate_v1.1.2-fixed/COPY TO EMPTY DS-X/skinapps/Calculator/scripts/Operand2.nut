function Operand::UnPost()
// Decrements _cursor and sets the value under _cursor to zero.
{
	if(_cursor > 2)
	{
		if(!_decimalLock)
			_operandArray[1]--;
		else if(_cursor == (_operandArray[1] + 2) )
		{
			_operandArray[1] = _operandArray[1] - 1;
			_decimalLock = false;
		}

		_cursor--;
		_operandArray[_cursor] = 0;

		if(this.IsZero())
			_operandArray[0] = 1;
	}
}



function Operand::PostDigit(num)
// Puts the argument into _operandArray and increments _cursor.
{
	if( (num != 0) || (_cursor != 2) || (_decimalLock) )
		if(_cursor < _operandSize)
		{
			_operandArray[_cursor] = num;
			_cursor++;

			if(_decimalLock == false)
				_operandArray[1] = _operandArray[1] + 1;			
		}
}

function Operand::Negative()
// Inverts the sign of *this.
{
	_operandArray[0] = (_operandArray[0] - 1) * -1;
}

function Operand::Sin()
// Finds the Sine of *this. Returns result in an Operand obeject. (Done in radians.)
{
	local _sinSize = 7;

	local tmp = Operand(_sinSize);
	tmp._operandArray[2] = 2;
	tmp._operandArray[1]++;

	local piHalf = Operand(_sinSize);

	piHalf.Assign(Pi(_sinSize));
	piHalf.Assign(piHalf.Divide(tmp));

	tmp._operandArray[2] = 1;

	local invert = false;

	local xx = Operand(_operandSize);
	xx.Assign(this);
	xx.Justify();

	local x = Operand(_sinSize);

	for(local i = 0; i < _sinSize; i++)
		x._operandArray[i] = xx._operandArray[i];


	if(x._operandArray[1] > 3)
	{
		tmp._operandArray[0] = 2;
		return tmp;
	}

	if(x._operandArray[0] == 0)
	{
		x._operandArray[0] = 1;
		invert = true;
	}

	local tally = 0

	while(x._operandArray[0] == 1)
	{
		x.Assign(x.Subtract(piHalf));
		tally++;
	}

	x.Assign(x.Add(piHalf));

	if((tally % 4) == 2)
		x.Assign(piHalf.Subtract(x));
	else if((tally % 4) == 3)
		x._operandArray[0] = 0;
	else if((tally % 4) == 0)
	{
		x.Assign(piHalf.Subtract(x));
		x._operandArray[0] = 0;
	}

	local tmpSum = Operand(_sinSize);
	tmpSum._operandArray[0] = 1;

	local factorial = Operand(_sinSize);
	factorial._operandArray[2] = 1;
	factorial._operandArray[1]++;

	for(local i = 1; i < 8; i += 2)
	{
		for(local j = 0; j < i; j++)
			tmp.Assign(tmp.Multiply(x));

		tmp.Assign(tmp.Divide(Factorial(i, _sinSize)));

		if( (i % 4) == 1)
			tmpSum.Assign(tmpSum.Add(tmp));
		else
			tmpSum.Assign(tmpSum.Subtract(tmp));

		tmp.Reset();
		tmp._operandArray[2] = 1;
		tmp._operandArray[1]++;
	}

	if(invert)
		tmpSum._operandArray[0] = (tmpSum._operandArray[0] - 1) * -1;

	return tmpSum;
}

function Operand::Assign(other)
// Assigns the values of other's data members to *this.
{
	if(other._operandSize < this._operandSize)
	{
		this.Reset();
		for(local i = 0; i < other._operandSize; i++)
			_operandArray[i] = other._operandArray[i];
	}
	else		
		for(local i = 0; i < _operandSize; i++)
			_operandArray[i] = other._operandArray[i];

	_decimalLock = other._decimalLock;
	_cursor = other._cursor;
}

function Operand::Shift(direction, amount)
// Shifts _operandArray "left" of "right" by given amount.
{
	if( (amount <= (_operandSize - 2) ) && (amount > 0) )
	{
		if(direction == "right")
		{
			for(local i = (_operandSize - 1); i >= (2 + amount); i--)
				_operandArray[i] = _operandArray[i - amount];
			for(local i = 2; i < (amount + 2); i++)
			{
				_operandArray[i] = 0;
				_operandArray[1] = _operandArray[1] + 1
			}
		}
		else if(direction == "left")
		{
			for(local i = 2; i < (_operandSize - amount - 1); i++)
				_operandArray[i] = _operandArray[i + amount];
			for(local i = (_operandSize - amount); i < _operandSize; i++)
			{
				_operandArray[i] = 0;
				_operandArray[1] = _operandArray[1] - 1;
			}
		}
	}
	else
	{
		for(local i = 2; i < _operandSize; i++)
			_operandArray[i] = 0;

		if(direction == "right")
			_operandArray[1] += amount;
		else
			_operandArray[1] -= amount;
	}
			
}