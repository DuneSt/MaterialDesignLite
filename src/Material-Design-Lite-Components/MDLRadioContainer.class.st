"
Description
--------------------

I am a brush to create a container for a radio button.

Example
--------------------

	html mdlRadioContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlRadioButton
				beChecked;
				value: '1';
				attributeAt: 'name' put: 'options';
				id: html lastId.
			html mdlRadioLabel: 'First' ]
"
Class {
	#name : #MDLRadioContainer,
	#superclass : #WALabelTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLRadioContainer >> initialize [
	super initialize.
	self class: 'mdl-radio'.
	self class: 'mdl-js-radio'
]

{ #category : #options }
MDLRadioContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLRadioContainer >> rippleEffectIf: aBoolean [
	aBoolean ifTrue: [ self rippleEffect ]
]
