"
Description
--------------------

I am a brush to create a textarea tag for mdl.

Example
--------------------

	html
		mdlTextFieldContainer: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text lines...'.
			html mdlTextArea
				id: html lastId;
				rows: 3 ]
"
Class {
	#name : #MDLTextArea,
	#superclass : #WATextAreaTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextArea >> initialize [
	super initialize.
	self class: 'mdl-textfield__input'
]
