"
I am representing text field screen.
"
Class {
	#name : #MDLTextFieldsScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLTextFieldsScreen class >> description [
	^ 'Textual input components.'
]

{ #category : #accessing }
MDLTextFieldsScreen class >> icon [
	^'comptextfieldsPng'
]

{ #category : #accessing }
MDLTextFieldsScreen class >> title [
	^ 'Text Fields'
]

{ #category : #sections }
MDLTextFieldsScreen >> floatingLabelTextFields [
	^ OrderedDictionary new
		add: 'Text with floating label' -> #renderFloatingLabelTextFieldOn:;
		add: 'Numeric with floating label' -> #renderFloatingLabelNumberTextFieldOn:;
		add: 'Input number' -> #renderInputNumberOn:;
		yourself
]

{ #category : #demos }
MDLTextFieldsScreen >> renderExpandingTextFieldOn: html [
	html mdlTextFieldContainer
		expandable;
		style: 'width: 200px;';
		with: [ html mdlButton
				labelIcon;
				for: html nextId;
				with: [ html mdlIcon: 'search' ].
			html
				mdlTextFieldExpandableHolder: [ html mdlTextFieldInput id: html lastId.
					html mdlTextFieldLabel
						for: html lastId;
						with: 'Expandable Input' ] ]
]

{ #category : #demos }
MDLTextFieldsScreen >> renderFloatingLabelNumberTextFieldOn: html [
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Number...'.
			html mdlTextFieldInput
				id: html lastId;
				pattern: '-?[0-9]*(\.[0-9]+)?'.
			html mdlTextFieldError: 'Input is not a number !' ]
]

{ #category : #demos }
MDLTextFieldsScreen >> renderFloatingLabelTextFieldOn: html [
	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text...'.
			html mdlTextFieldInput id: html lastId ]
]

{ #category : #demos }
MDLTextFieldsScreen >> renderInputNumberOn: html [
	html mdlTextFieldContainer
		floatingLabel;
		expandable;
		with: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Number...'.
			html mdlTextFieldInput
				id: html lastId;
				type: 'number' ]
]

{ #category : #demos }
MDLTextFieldsScreen >> renderMultiLineTextFieldOn: html [
	html
		mdlTextFieldContainer: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text lines...'.
			html mdlTextArea
				id: html lastId;
				rows: 3 ]
]

{ #category : #demos }
MDLTextFieldsScreen >> renderNumberTextFieldOn: html [
	html
		mdlTextFieldContainer: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Number...'.
			html mdlTextFieldInput
				id: html lastId;
				pattern: '-?[0-9]*(\.[0-9]+)?'.
			html mdlTextFieldError: 'Input is not a number !' ]
]

{ #category : #rendering }
MDLTextFieldsScreen >> renderScreenContentOn: html [
	self
		render: self simpleTextFields on: html;
		render: self floatingLabelTextFields on: html;
		render: self specialTextFields on: html
]

{ #category : #demos }
MDLTextFieldsScreen >> renderTextFieldOn: html [
	html
		mdlTextFieldContainer: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text...'.
			html mdlTextFieldInput id: html lastId ]
]

{ #category : #sections }
MDLTextFieldsScreen >> simpleTextFields [
	^ OrderedDictionary new
		add: ' Text' -> #renderTextFieldOn:;
		add: 'Numeric' -> #renderNumberTextFieldOn:;
		yourself
]

{ #category : #sections }
MDLTextFieldsScreen >> specialTextFields [
	^ OrderedDictionary new
		add: 'Multiple line' -> #renderMultiLineTextFieldOn:;
		add: 'Expanding' -> #renderExpandingTextFieldOn:;
		yourself
]
