rendering
renderContentOn: html
	| inputId |
	inputId := html nextId.
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
			patternErrorMessage ifNotEmpty: [ html mdlTextFieldError: patternErrorMessage ] ]