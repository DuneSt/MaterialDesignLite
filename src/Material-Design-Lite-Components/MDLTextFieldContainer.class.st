"
Description
--------------------

I am a brush to create a MDL text field.

Example
--------------------

	html
		mdlTextFieldContainer: [ html mdlTextFieldLabel
				for: html nextId;
				with: 'Text...'.
			html mdlTextFieldInput id: html lastId ]
"
Class {
	#name : #MDLTextFieldContainer,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #options }
MDLTextFieldContainer >> beExpandableIf: aBoolean [
	aBoolean ifTrue: [ self expandable ]
]

{ #category : #options }
MDLTextFieldContainer >> beFloatingLabelIf: aBoolean [
	aBoolean ifTrue: [ self floatingLabel ]
]

{ #category : #options }
MDLTextFieldContainer >> expandable [
	self class: 'mdl-textfield--expandable'
]

{ #category : #options }
MDLTextFieldContainer >> floatingLabel [
	self class: 'mdl-textfield--floating-label'
]

{ #category : #initialization }
MDLTextFieldContainer >> initialize [
	super initialize.
	self class: 'mdl-textfield'.
	self class: 'mdl-js-textfield'
]
