rendering
renderContentOn: html
	| inputId |
	self id ifNotNil: [ :aString | inputId := aString ] ifNil: [ inputId := html nextId ].
	html mdlTextFieldContainer
		class: (self properties at: #class: ifAbsent: [ '' ]);
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
			brush
				onClick: (html jQuery this parent addClass: 'is-focused');
				onBlur: (html jQuery this parent removeClass: 'is-focused').
			brush onClick: (html jQuery this parent addClass: 'is-dirty').
			self addPropertiesToBrush.
			patternErrorMessage ifNotEmpty: [ html mdlTextFieldError: patternErrorMessage ].
			self errorMessage ifNotEmpty: [ :message | html mdlTextFieldError: message ] ]