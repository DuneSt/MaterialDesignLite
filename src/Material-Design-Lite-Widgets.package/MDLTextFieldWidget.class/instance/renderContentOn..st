rendering
renderContentOn: html
	| inputId brush |
	inputId := html nextId.
	html mdlTextFieldContainer
		beFloatingLabelIf: beFloatingLabel;
		beExpandableIf: beExpandable;
		with: [ label
				ifNotNil: [ html mdlTextFieldLabel
						for: inputId;
						with: label ].
			brush := html mdlTextFieldInput
				id: inputId;
				yourself.
			self
				addTextInputPropertiesToBrush: brush ]