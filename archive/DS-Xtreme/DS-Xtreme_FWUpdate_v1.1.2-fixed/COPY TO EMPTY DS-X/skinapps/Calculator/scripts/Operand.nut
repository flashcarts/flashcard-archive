class Operand
// Holds an array which represents a floating point number of variable precision.
// Provides functions to perform mathematical operations on operand objects.
{
	constructor(operandSize)
	{
		_operandArray = [];
		for(local i = 0; i < operandSize; i++)
			_operandArray.append(0);
		_operandArray[0] = 1;

		_operandSize = operandSize;
		_cursor = 2;
		_decimalLock = false;
	}

	_decimalLock = null;
	_cursor = null;
	_operandArray = null;
	_operandSize = null;
}



function Operand::Add(other)
// Sets up *this and other for an addition operation. Returns result in an Operand object.
{
	local rhs = Operand(_operandSize);
	local lhs = Operand(_operandSize);
	rhs.Assign(other);
	lhs.Assign(this);

	Allign(lhs, rhs);

		//Determines which addition or subtraction operation to perform on the pair of operands.
	if( (lhs._operandArray[0] == 0) && (rhs._operandArray[0] == 1) )
	{
		lhs._operandArray[0] = 1;
		lhs = rhs.NaturalSubtract(lhs);
	}
	else if( (lhs._operandArray[0] == 1) && (rhs._operandArray[0] == 0) )
	{
		rhs._operandArray[0] = 1;
		lhs = lhs.NaturalSubtract(rhs);
	}	
	else
	{
		lhs = rhs.NaturalAdd(lhs);
	}

	lhs.Justify();
	lhs._cursor = 2;

	return lhs;
}

function Operand::NaturalAdd(other)
// Adds the _operandArray attributes indexes [2] through [end] naturally. Returns result as an Operand object.
{
	local rhs = Operand(_operandSize);
	local lhs = Operand(_operandSize);
	rhs.Assign(other);
	lhs.Assign(this);

	local carry = 0;
	local tmp = 0;

		//The actual addition performed on the Operand objects.
	for(local i = (_operandSize - 1); i >= 2; i--)
	{
		tmp = lhs._operandArray[i] + rhs._operandArray[i] + carry;

		carry = 0;

		if(tmp > 9)
		{
			carry = 1;
			lhs._operandArray[i] = tmp - 10;
		}
		else
			lhs._operandArray[i] = tmp;
	}
		//If a carry digit is left over, shift array and add in the carry digit.
	if(carry == 1)
	{
		lhs.Shift("right", 1);
		lhs._operandArray[2] = 1;
	}

	return lhs;
}

function Operand::Subtract(other)
// Sets up *this and other for a subtract operation. Returns result in an Operand object.
{
	local rhs = Operand(_operandSize);
	local lhs = Operand(_operandSize);
	rhs.Assign(other);
	lhs.Assign(this);

	Allign(lhs, rhs);

		//Determines which addition or subtraction operation to perform on the pair of operands.
	if( (lhs._operandArray[0] == 0) && (rhs._operandArray[0] == 1) )
	{
		rhs._operandArray[0] = 0;
		lhs = lhs.NaturalAdd(rhs);
	}
	else if( (lhs._operandArray[0] == 1) && (rhs._operandArray[0] == 0) )
	{
		rhs._operandArray[0] = 1;
		lhs = lhs.NaturalAdd(rhs);
	}
	else
	{
		lhs = lhs.NaturalSubtract(rhs);
	}

	lhs.Justify();
	lhs._cursor = 2;

	return lhs;
}

function Operand::NaturalSubtract(other)
// Subtracts the _operandArray attributes indexes [2] through [end] naturally. Returns result in an Operand object.
{
	local rhs = Operand(_operandSize);
	local lhs = Operand(_operandSize);
	rhs.Assign(other);
	lhs.Assign(this);

		// Insist that the larger operand be on the left.
	if(rhs.GreaterThan(lhs))
	{
		Swap(lhs, rhs);
		lhs._operandArray[0] = 0;
	}

		//The actual subtraction.
	for(local i = (_operandSize - 1); i >= 2; i--)
	{
		if(rhs._operandArray[i] > lhs._operandArray[i])
		{
			lhs._operandArray[i - 1] = lhs._operandArray[i - 1] - 1;
			lhs._operandArray[i] = lhs._operandArray[i] + 10;
		}

		lhs._operandArray[i] = lhs._operandArray[i] - rhs._operandArray[i]
	}

	return lhs;
}

function Operand::Multiply(other)
// Multiplies *this by other. Returns result in an Operand object.
{
	local tmp = [];
	local tmpSum = [];
	local rhs = [];
	local lhs = [];

	local dblSize = ((_operandSize - 2) * 2);

		// Set up the operands in double-wide arrays.
	for(local i = 0; i < dblSize; i++)
	{
		if(i >= (_operandSize - 2) )
		{
			rhs.append(this._operandArray[(i - _operandSize) + 4]);
			lhs.append(other._operandArray[(i - _operandSize) + 4]);
		}
		else
		{
			rhs.append(0);
			lhs.append(0);
		}

		tmp.append(0);
		tmpSum.append(0);
	}

	local carry = 0;
	local sumCarry = 0;

		// The actual multiplication of the operands.
	for(local i = (dblSize - 1); i >= (_operandSize - 2); i--)
	{
		carry = 0;

		for(local j = (dblSize - 1); j >= (_operandSize - 2); j--)
		{
			tmp[i + j - (dblSize - 1)] = (((lhs[j] * rhs[i]) + carry) % 10).tointeger();
			
			carry = (((lhs[j] * rhs[i]) + carry) / 10).tointeger();
		}

		tmp[i - (_operandSize - 2)] = carry;

		sumCarry = 0;
		local what = 0;
		for(local k = (dblSize - 1); k >= 0; k--)
		{
			what = tmpSum[k] + tmp[k] +sumCarry;

			if(what > 9)
			{
				tmpSum[k] = what - 10;
				sumCarry = 1;
			}
			else
			{
				tmpSum[k] = what;
				sumCarry = 0;
			}
		}

		for(local l = 0; l < dblSize; l++)
			tmp[l] = 0;
	} 

		// Create a new operand object to hold the result.
	local result = Operand(_operandSize);
	result.Assign(this);
			
		// Justify the array left, eliminating left-hand zeros.
	local leftshift = 0;
	
	for(local i = 0; i < dblSize; i++)
	{
		if(tmpSum[i] == 0)
			leftshift++;
		else
			break;
	}

		// If the array is all zeros, avoid shifting.
	if(leftshift == dblSize)
		leftshift = 0;

	for(local i = 0; i < (dblSize - leftshift); i++)
		tmpSum[i] = tmpSum[i + leftshift];

	for(local i = ((dblSize - 1) - leftshift); i < dblSize; i++)
		tmpSum[i] = 0;

		// Set up the result Operand.
	result._operandArray[1] = other._operandArray[1] + this._operandArray[1] - leftshift;
	result._operandArray[0] = ((((other._operandArray[0] + this._operandArray[0]) % 2).tointeger()) - 1) * -1;

	for(local i = 2; i < _operandSize; i++)
		result._operandArray[i] = tmpSum[i - 2];

	result._cursor = 2;

	return result;
}

function Operand::Divide(other)
// Divides *this by other. Returns result in an Operand object.
{
	local lhs = Operand(_operandSize);
	local rhs = Operand(_operandSize);
	lhs.Assign(this);
	rhs.Assign(other);

		// If denominator is zero, return an error array.
	if(other.IsZero())
	{
		rhs._operandArray[0] = 2;
		return rhs;
	}

	rhs.Justify();
	lhs.Justify();

	local tmp = [];
	local tmp_rhs = [];
	local tmp_lhs = [];
	local tripleSize = ((_operandSize - 2) * 3);
	local dblSize = ((_operandSize - 2) * 2);

		// Copy the operands over into triple-wide arrays.
	for(local i = 0; i < tripleSize; i++)
	{
		if(i < (_operandSize - 2) )
		{
			tmp_rhs.append(rhs._operandArray[i + 2]);
			tmp_lhs.append(lhs._operandArray[i + 2]);
		}
		else
		{
			tmp_rhs.append(0);
			tmp_lhs.append(0);
		}

		tmp.append(0);
	}

	local sub = false;
	local divNum = 0;

		// The actual division between the operands.
	for(local k = 0; k < dblSize; k++)
	{
		for(local i = 0; i < 10; i++)
		{
			sub = true;

			for(local j = 0; j < ((_operandSize - 2) + k); j++)
			{
				if(tmp_rhs[j] < tmp_lhs[j])
					break;
				else if(tmp_rhs[j] > tmp_lhs[j])
					sub = false;
			}

			if(sub)
			{
				tmp[k] = tmp[k] + 1;

				for(local j = (tripleSize - 1); j >= 0; j--)
				{
					if(tmp_rhs[j] > tmp_lhs[j])
					{
						tmp_lhs[j - 1] = tmp_lhs[j - 1] - 1;
						tmp_lhs[j] = tmp_lhs[j] + 10;
					}

					tmp_lhs[j] = tmp_lhs[j] - tmp_rhs[j];
				}
			}
			else 
				break;
		}

		for(local i = (tripleSize - 1); i > 0; i--)
		{
			tmp_rhs[i] = tmp_rhs[i - 1];
		}
		tmp_rhs[0] = 0;
	}



		// Justify the array left, eliminating left-hand zeros.
	local leftshift = 0;
	
	for(local i = 0; i < tripleSize; i++)
	{
		if(tmp[i] == 0)
			leftshift++;
		else
			break;
	}

		// If the array is all zeros, return zero Operand.
	if(leftshift == tripleSize)
	{
		local zeroOp = Operand(_operandSize);
		return zeroOp;
	}

	for(local i = 0; i < (tripleSize - leftshift); i++)
		tmp[i] = tmp[i + leftshift];

	for(local i = ((tripleSize - 1) - leftshift); i < tripleSize; i++)
		tmp[i] = 0;



		// Set up the result Operand in the temporary rhs Operand.
	rhs._operandArray[0] = ((((lhs._operandArray[0] + rhs._operandArray[0]) % 2).tointeger()) - 1) * -1;
	rhs._operandArray[1] = 1 - rhs._operandArray[1] + lhs._operandArray[1] - leftshift;

	for(local i = 2; i < _operandSize; i++)
		rhs._operandArray[i] = tmp[i - 2];

	rhs._cursor = 2;

	return rhs;

}

function Operand::AsString()
// Returns a string representation of *this Operand. Size of the string is less than or equal to _operandSize.
{
	local operandString = "";
	local tmp = 0;
	local elimZeros = true;
	local zeroCount = 0;

	this.Justify();

	if(_operandArray[0] == 2)
	// If *this is an error array, return "error."
	{
		this.Reset();
		return "error.";
	}
	else if(_operandArray[1] > 99)
	// If *this is very large, return "error."
	{
		this.Reset();
		return "error.";
	}
	else if(_operandArray[1] < -99)
	// If *this is very small, return "error."
	{
		this.Reset();
		return "error.";
	}
	else if( (_operandArray[1] > 0) && (_operandArray[1] <= (_operandSize - 2)) )
	{			
		for(local i = (_operandSize - 1); i >= 2; i--)
		{
			if(i == (_operandArray[1] + 1) )
				operandString = "." + operandString;
	
			if( (_operandArray[i] == 0) && (elimZeros == true) && (_operandArray[1] < (i - 1)) && (i >= _cursor))
				zeroCount++;
			else
			{
				operandString = _operandArray[i].tostring() + operandString;
				elimZeros = false;
			}
		}
			
		if(_operandArray[0] == 1)
			operandString = " " + operandString;
		else
			operandString = "-" + operandString;
	
		for(local i = 0; i < zeroCount; i++)
			operandString = " " + operandString;
	} 
	else if( (_operandArray[1] <= 0) && (_operandArray[1] > (3 - (_operandSize - 2)) ) )
	{
		for(local i = ((_operandSize - 1) - ( (_operandArray[1] * -1) + 1)) ; i >= 2; i--)
		{

			if( (_operandArray[i] == 0) && (elimZeros == true) && (i >= _cursor))
				zeroCount++;
			else
			{
				operandString = _operandArray[i].tostring() + operandString;
				elimZeros = false;
			}
		}
			
		for(local i = 0; i > ( _operandArray[1] );i--)
			operandString = "0" + operandString;

		operandString = "0." + operandString;
	
		if(_operandArray[0] == 1)
			operandString = " " + operandString;
		else
			operandString = "-" + operandString;
	
		for(local i = 0; i < zeroCount; i++)
			operandString = " " + operandString;
	

	}
	else if(_operandArray[1] < 0)
	{
				
		for(local i = (_operandSize - 5); i >= 3; i--)
		{
			if( (_operandArray[i] == 0) && (elimZeros == true) && (i > 3) )
				zeroCount++;
			else
			{
				operandString = _operandArray[i].tostring() + operandString;
				elimZeros = false;
			}
		}
		operandString = _operandArray[2] + "." + operandString;

		if(_operandArray[0] == 1)
			operandString = " " + operandString;
		else
			operandString = "-" + operandString;

		for(local i = 0; i < zeroCount; i++)
			operandString = " " + operandString;

		operandString += "e-";
	
		local exp = _operandArray[1] * -1;
		operandString += (exp / 10).tointeger().tostring();
		operandString += (exp % 10).tointeger().tostring();					
	}
	else
	{
		for(local i = (_operandSize - 4); i >= 3; i--)
		{
			if( (_operandArray[i] == 0) && (elimZeros == true) && (i > 3) )
				zeroCount++;
			else
			{
				operandString = _operandArray[i].tostring() + operandString;
				elimZeros = false;
			}
		}
		operandString = _operandArray[2] + "." + operandString;
	
		if(_operandArray[0] == 1)
			operandString = " " + operandString;
		else
			operandString = "-" + operandString;

		for(local i = 0; i < zeroCount; i++)
			operandString = " " + operandString;

		operandString += "e";

		local exp = _operandArray[1] - 1;
		operandString += (exp / 10).tointeger().tostring();
		operandString += (exp % 10).tointeger().tostring();
	}

	return operandString;
}

