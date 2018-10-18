"
Description
--------------------

I am a brush to create a checkbox container

Example
--------------------

	html mdlCheckboxContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlCheckbox
				value: true;
				id: html lastId.
			html mdlCheckboxLabel: 'Checkbox' ]
"
Class {
	#name : #MDLCheckboxContainer,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLCheckboxContainer >> initialize [
	super initialize.
	self class: 'mdl-checkbox'.
	self class: 'mdl-js-checkbox'
]

{ #category : #options }
MDLCheckboxContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLCheckboxContainer >> rippleEffectIf: aBoolean [
	aBoolean
		ifTrue: [ self rippleEffect ]
]
