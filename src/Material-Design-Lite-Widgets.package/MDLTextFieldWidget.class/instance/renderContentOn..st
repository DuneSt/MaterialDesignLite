rendering
renderContentOn: html
	| inputId |
	self id ifNotNil: [ :aString | inputId := aString ] ifNil: [ inputId := html nextId ].
	html mdlTextFieldContainer
		beFloatingLabelIf: isFloatingLabel;
		beExpandableIf: isExpandable;
		with: [ label
				ifNotNil: [ html mdlTextFieldLabel
						for: inputId;
						with: label ].
			html
				brush:
					(brush
						id: inputId;
						yourself).
			self addPropertiesToBrush.
			patternErrorMessage ifNotEmpty: [ html mdlTextFieldError: patternErrorMessage ].
			self errorMessage ifNotEmpty: [ :message | html mdlTextFieldError: message ] ]