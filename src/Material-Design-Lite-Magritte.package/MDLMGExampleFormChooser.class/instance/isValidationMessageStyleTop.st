accessing
isValidationMessageStyleTop
	^ self validationMessageStyle = 'top validation messages' or: [ self isValidationMessageStyleBoth ]