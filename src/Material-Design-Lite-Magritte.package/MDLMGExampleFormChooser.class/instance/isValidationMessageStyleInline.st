accessing
isValidationMessageStyleInline
	^ self isValidationMessageStyleTop not or: [ self isValidationMessageStyleBoth ]