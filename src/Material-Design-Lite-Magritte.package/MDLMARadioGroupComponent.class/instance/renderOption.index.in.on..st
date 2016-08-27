rendering
renderOption: anObject index: anInteger in: aRadioGroup on: html
	| optionId |
	optionId := self optionId: anInteger.
	html mdlRadioContainer 
		for: optionId; 
		with: [ 
			aRadioGroup mdlRadioButton 
				id: optionId;
				selected: self value = anObject;
				callback: [ self value: anObject ].
			html mdlRadioLabel: (self labelForOption: anObject)
		].
	html break


