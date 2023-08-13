class SudokuLogic
// This class contains and handles the sudoku grid information.
// No grid building/solving algorithms are present. Actual puzzles are held in the SDKPUZZ class.
{
	constructor()
	{
			// Initialize the arrays.
		_sudokuArray = [];

		for(local i = 0; i < 81; i++)
			_sudokuArray.append(0);

		_sudokuSolutionArray = [];

		for(local i = 0; i < 81; i++)
			_sudokuSolutionArray.append(0);

			// The SDKPUZZ object contains the sudoku puzzles and solutions.
		_sdk = SDKPUZZ();

		_gridNo = 0;
	}
	_sudokuArray = null;
	_sudokuSolutionArray = null;

	_sdk = null;

	_gridNo = null;

	_difficulty = null;
}

function SudokuLogic::CreateGrid()
// Loads a new grid. Uses data member _gridNo to determine which grid to load.
{
	local pn = _gridNo;
	local tmp = "";

	local string = _sdk._puzzle.slice(82*pn + 1, 82*pn + 82);
	_difficulty = _sdk._puzzle.slice(82*pn, 82*pn + 1);

	for(local i = 0; i < 81; i++)
	{
		tmp = string.slice(i, i+1);
		if(tmp != ".")
			_sudokuArray[i] = tmp.tointeger() + 10;
		else
			_sudokuArray[i] = 0;
	}


	local string = _sdk._solution.slice(82*pn + 1, 82*pn + 82);

	for(local i = 0; i < 81; i++)
	{
		tmp = string.slice(i, i+1);
		if(tmp != ".")
			_sudokuSolutionArray[i] = tmp.tointeger();
		else
			_sudokuSolutionArray[i] = 0;
	}
}

function SudokuLogic::PostToGrid(num, location)
// Posts a new value to the sudoku array.
{
	if(_sudokuArray[location] < 10)
		_sudokuArray[location] = num;
}

function SudokuLogic::GetSudokuArray()
// Returns a copy of the sudokuArray data member.
{
	local tmp = [];

	for(local i = 0; i < 81; i++)
		tmp.append(_sudokuArray[i]);

	return tmp;
}

function SudokuLogic::IsFilled(sudokuArray)
// Returns true if there is a non-zero entry in each sudokuArray cell. Otherwise, returns false.
{
	for(local i = 0; i < 81; i++)
	{
		if(sudokuArray[i] == 0)
			return false;
	}

	return true;
}

function SudokuLogic::FindIfSolved(sudokuArray)
// Determines whether or not the sudokuArray is a correct solution
{
	for(local i = 0; i < 81; i++)
		if( (_sudokuArray[i] % 10) != _sudokuSolutionArray[i])
			return false;

	return true;
}
	
function SudokuLogic::GetDifficultyString()
// Returns a string representing the difficulty of the current sudoku grid.
{
	if(_difficulty == "y")
		return "Easy";

	else if(_difficulty == "d")
		return "Hard";

	else if(_difficulty == "n")
		return "Cruel";

	else
		return "Med.";
}

function SudokuLogic::GetGridNumberString()
// Returns a string representing the difficulty of the current sudoku grid.
{
	local pn = _gridNo + 1;

	if(pn < 10)
		return "00" + pn.tostring();
	else if(pn < 100)
		return "0" + pn.tostring();
	else
		return pn.tostring();
}