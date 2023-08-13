class KeyboardInitializer
// The model passed to the Keyboard dialog.
{
	constructor(offset_y, max_length, prompt)
	{
		_OFFSET_Y = offset_y;
		_MAX_LENGTH = max_length;
		_PROMPT = prompt;
	}

	_OFFSET_Y = null;
	_MAX_LENGTH = null;
	_PROMPT = null;	
}

// Basic get/set functions

function KeyboardInitializer::SetMaxLength(num)
{
	_MAX_LENGTH = num;
}

function KeyboardInitializer::GetMaxLength()
{
	return _MAX_LENGTH;
}

function KeyboardInitializer::SetOffset(num)
{
	_OFFSET_Y = num;
}

function KeyboardInitializer::GetOffset()
{
	return _OFFSET_Y;
}

function KeyboardInitializer::SetPrompt(str)
{
	_PROMPT = str;
}

function KeyboardInitializer::GetPrompt()
{
	return _PROMPT;
}