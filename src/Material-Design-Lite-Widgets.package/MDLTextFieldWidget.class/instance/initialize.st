initialization
initialize
	super initialize.
	brush := MDLTextFieldInput new.
	brushProperties := Dictionary new.
	isExpandable := false.
	isFloatingLabel := false.
	patternErrorMessage := ''