"
Description
--------------------

I am a brush to create a text field input.

Example
--------------------

	html
		mdlTextFieldContainer: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text...'.
			html mdlTextFieldInput id: html lastId ]
"
Class {
	#name : #MDLTextFieldInput,
	#superclass : #WAFormInputTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextFieldInput >> initialize [
	super initialize.
	self class: 'mdl-textfield__input'
]

{ #category : #accessing }
MDLTextFieldInput >> pattern: aPattern [
	self attributeAt: 'pattern' put: aPattern
]

{ #category : #accessing }
MDLTextFieldInput >> type [
	^ 'text'
]
