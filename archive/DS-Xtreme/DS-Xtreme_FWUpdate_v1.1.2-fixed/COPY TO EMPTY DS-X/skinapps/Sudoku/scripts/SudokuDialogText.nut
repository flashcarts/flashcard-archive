class SDKDIALOG
// Handles the help dialog text
{
	constructor()
	{
		_currentLineNum = 0;

		_helpText = [];

		// The help menu text
		_helpText.append("        o-----------------o");
		_helpText.append("        | DSX Sudoku Help |");
		_helpText.append("        o-----------------o");
		_helpText.append(" ");
		_helpText.append("Basic Rules: ");
		_helpText.append("   To solve a sudoku puzzle,");
		_helpText.append(" insert a number into each box so");
		_helpText.append(" that the numbers 1 through 9");
		_helpText.append(" appear in every row, column, and ");
		_helpText.append(" 9-box square (these are divided");
		_helpText.append(" by bold lines). A number cannot");
		_helpText.append(" appear more than once in any row,");
		_helpText.append(" column, or 9-box square. Using");
		_helpText.append(" the given numbers as a guide,");
		_helpText.append(" find the correct solution (each");
		_helpText.append(" puzzle has only one solution).");
		_helpText.append(" ");
		_helpText.append("___________________________________");
		_helpText.append(" ");
		_helpText.append("        DSX Sudoku Features:");
		_helpText.append("        --------------------");
		_helpText.append(" ");
		_helpText.append("Check Button:");
		_helpText.append("   Checks the grid for errors and");
		_helpText.append(" displays Solvable if the grid");
		_helpText.append(" contains no errors or Errors if");
		_helpText.append(" it does contain errors.");
		_helpText.append(" ");
		_helpText.append("Hint Button:");
		_helpText.append("   Fills in one square with the");
		_helpText.append(" correct number. The square is");
		_helpText.append(" determined in a pseudo-random");
		_helpText.append(" fashion.");
		_helpText.append(" ");
		_helpText.append("Undo Button:");
		_helpText.append("   Removes all incorrect entries");
		_helpText.append(" in the current grid.");
		_helpText.append(" ");
		_helpText.append("Solve Button:");
		_helpText.append("   Solves the current grid.");
		_helpText.append(" ");
		_helpText.append("Open Button:");
		_helpText.append("   Summons a keyboard to open");
		_helpText.append(" one of the 299 grids.");
		_helpText.append(" ");
		_helpText.append("Difficulty Level:");
		_helpText.append("   A grid's difficulty level is");
		_helpText.append(" displayed below the keypad.");
		_helpText.append(" ");
		_helpText.append("Square Tagging:");
		_helpText.append("   Press the B button while on");
		_helpText.append(" a grid square to tag that square.");
		_helpText.append(" The first push will tag the");
		_helpText.append(" square with red. A second push");
		_helpText.append(" will change the square color to");
		_helpText.append(" green. A third push will change");
		_helpText.append(" the square back to the original");
		_helpText.append(" color. Use this feature to tag");
		_helpText.append(" guesses or to aid in remembering");
		_helpText.append(" certain grid properties.");
		_helpText.append(" ");
		_helpText.append("___________________________________");
		_helpText.append(" ");
		_helpText.append("Thank you for playing! :)");
		_helpText.append("  DSX-Mucky");

		

	}

	_helpText = null;
	_currentLineNum = null;
}

function SDKDIALOG::IncrementLineNum()
// Increments the _currentLineNum data member
{
	if(_currentLineNum < _helpText.len() - 10)
		_currentLineNum++;
}

function SDKDIALOG::DecrementLineNum()
// Decrements the _currentLineNum data member
{
	if(_currentLineNum > 0)
		_currentLineNum--;
}

function SDKDIALOG::GetLines()
// Fetches an array of 10 strings to be displayed in the help dialog
{
	local tmp = []

	for(local i = 0; i < 10; i++)
		tmp.append(_helpText[i + _currentLineNum]);

	return tmp;
}