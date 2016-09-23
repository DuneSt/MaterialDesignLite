accessing
validationMessageStyle
	^ validationMessageStyle ifNil: [ validationMessageStyle := self validationMessageStyles first ]