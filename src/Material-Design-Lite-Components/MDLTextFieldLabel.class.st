"
Description
--------------------

I am a brush to create a textField label.

Example
--------------------

	html
		mdlTextFieldContainer: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text...'.
			html mdlTextFieldInput id: html lastId ]
"
Class {
	#name : #MDLTextFieldLabel,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLTextFieldLabel >> initialize [
	super initialize.
	self class: 'mdl-textfield__label'
]
