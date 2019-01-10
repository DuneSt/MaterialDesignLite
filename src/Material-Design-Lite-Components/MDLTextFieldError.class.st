"
Description
--------------------

I am a brush to create a text field error.

Example
--------------------

	html mdlTextFieldContainer
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Number...'.
			html mdlTextFieldInput
				id: html lastId;
				pattern: '-?[0-9]*(\.[0-9]+)?'.
			html mdlTextFieldError: 'Input is not a number !' ]
"
Class {
	#name : #MDLTextFieldError,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextFieldError >> initialize [
	super initialize.
	self class: 'mdl-textfield__error'
]

{ #category : #accessing }
MDLTextFieldError >> tag [
	^ 'span'
]
