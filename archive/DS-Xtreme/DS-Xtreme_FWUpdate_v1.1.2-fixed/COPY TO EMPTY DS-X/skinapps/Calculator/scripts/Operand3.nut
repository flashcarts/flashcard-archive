function Operand::Decimal()
// Asserts the _decimalLock.
{
	_decimalLock = true;
}

function Operand::Factorial(num, operandSize)
// Finds factorial of num(int). Returns result in an Operand object.
{
	local tmp = Operand(operandSize);
	tmp._operandArray[2] = 1;
	tmp._operandArray[1]++;

	local tmp2 = Operand(operandSize);
	tmp2._operandArray[2] = 1;
	tmp2._operandArray[1]++;

	local tmp3 = Operand(operandSize);
	tmp3._operandArray[2] = 1;
	tmp3._operandArray[1]++;

	for(local i = 0; i < num; i++)
	{
		
		tmp.Assign(tmp.Multiply(tmp2));

		tmp2.Assign(tmp2.Add(tmp3));
	}

	return tmp;
}

function Operand::Cos()
// Finds the Cosine of *this through Sin() function. Returns result in an Operand object. (Done in radians.)
{
	local tmp = Operand(_operandSize);
	tmp._operandArray[1]++;
	tmp._operandArray[2] = 2;

	local piHalf = Operand(_operandSize);
	piHalf.Assign(Pi(_operandSize));
	piHalf.Assign(piHalf.Divide(tmp));

	tmp.Assign(this);

	tmp.Assign(tmp.Add(piHalf));

	tmp.Assign(tmp.Sin());

	return tmp;
}

function Operand::Tan()
// Finds the Tagent of *this through Sin() and Cos() functions. Returns result in an Operand object. (Done in radians.)
{
	local tmp = Operand(_operandSize);
	local tmp2 = Operand(_operandSize);

	tmp.Assign(this);
	tmp2.Assign(this);

	tmp.Assign(tmp.Sin());
	if(tmp._operandArray[0] == 2)
		return tmp;

	tmp.Assign(tmp.Divide(tmp2.Cos()));

	return tmp;
}

function Operand::Squareroot()
// Finds the square root of *this. Returns result in an Operand object.
{
	local _srSize = 8;

	local x = Operand(_srSize);
	x.Assign(this);

	if(x.IsZero())
		return x;

	if(x._operandArray[0] == 0)
	{
		x._operandArray[0] = 2;
		return x;
	}

	local tmp = Operand(_srSize);
	local tmp2 = Operand(_srSize);
	local tmp3 = Operand(_srSize);

	local two = Operand(_srSize);
	two._operandArray[1]++;
	two._operandArray[2] = 2;

	tmp2._operandArray[2] = 1;
	tmp2._operandArray[1] = x._operandArray[1] / 2;

	for(local i = 0; i < 9; i++)
	{
		tmp3.Assign(x.Divide(tmp2));

		tmp.Assign(tmp3.Add(tmp2));
		tmp2.Assign(tmp.Divide(two));

	}

	return tmp2;
}

function Operand::GreaterThan(other)
// Returns true if *this is greater than other. Otherwise, false is returned.
{
	local lhs = Operand(_operandSize);
	local rhs = Operand(_operandSize);
	lhs.Assign(this);
	rhs.Assign(other);

	lhs.Justify();
	rhs.Justify();

	if(lhs._operandArray[1] > rhs._operandArray[1])
		return true;
	else if(lhs._operandArray[1] < rhs._operandArray[1])
		return false;
	else
	{
		for(local i = 2; i < _operandSize; i++)
		{
			if(lhs._operandArray[i] > rhs._operandArray[i])
				return true;
			else if(lhs._operandArray[i] < rhs._operandArray[i])
				return false;
		}
	}

	return false;
}

function Operand::LessThan(other)
// Returns true if *this is less than other. Otherwise, false is returned.
{
	local lhs = Operand(_operandSize);
	local rhs = Operand(_operandSize);
	lhs.Assign(this);
	rhs.Assign(other);

	lhs.Justify();
	rhs.Justify();

	if(lhs._operandArray[1] < rhs._operandArray[1])
		return true;
	else if(lhs._operandArray[1] > rhs._operandArray[1])
		return false;
	else
	{
		for(local i = 2; i < _operandSize; i++)
		{
			if(lhs._operandArray[i] < rhs._operandArray[i])
				return true;
			else if(lhs._operandArray[i] > rhs._operandArray[i])
				return false;
		}
	}

	return false;
}

function Operand::Pi(operandSize)
// Returns an Operand representatin of the constant Pi of size operandSize.
{
	local tmp = [1, 1, 3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9, 3, 2];
	local op = Operand(operandSize);
	op._cursor = operandSize;

	for(local i = 0; i < operandSize; i++)
		if(i < tmp.len())
			op._operandArray[i] = tmp[i];

	return op;
}

function Operand::Swap(lhs, rhs)
// Swaps lhs and rhs.
{
	local tmp = Operand(_operandSize);

	tmp.Assign(lhs);
	lhs.Assign(rhs);
	rhs.Assign(tmp);
}

function Operand::IsZero()
// Returns true if *this is a zero array. Otherwise, false is returned.
{
	local tally = 0;

	for(local i = 2; i < _operandSize; i++)
		tally += _operandArray[i];

	if(tally == 0)
		return true;
	else
		return false;
}

function Operand::Inverse()
// Divides 1 by *this and returns the result in a temporary Operand.
{
	local x = Operand(_operandSize);
	x.Assign(this);

	local tmp = Operand(_operandSize);
	tmp._operandArray[1]++;
	tmp._operandArray[2] = 1;

	tmp.Assign(tmp.Divide(x));

	return tmp;
}

function Operand::Reset()
// Resets *this to a zero Operand.
{
	for(local i = 0; i < _operandSize; i++)
		_operandArray[i] = 0;
	_operandArray[0] = 1;

	_cursor = 2;
	_decimalLock = false;
}

function Operand::Allign(lhs, rhs)
//Alligns lhs and rhs by decimal point. The operand of smaller value is shifted while the larger operand remains unchanged.
{
	local offset = lhs._operandArray[1] - rhs._operandArray[1];
				
	if(offset > 0)
		rhs.Shift("right", offset);

	if(offset < 0)
		lhs.Shift("right", (offset * -1) );
}

function Operand::Justify()
// Shifts _operandArray left, eliminating all un-necessary 0's. 
{
	while( (_operandArray[1] >= 1) && (_operandArray[2] == 0) )
		this.Shift("left", 1);
}