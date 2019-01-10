"
Description
--------------------

I am a brush to create a container for an icon toggle.

Example
--------------------

	html mdlIconToggleContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlIconToggle
				value: true;
				id: html lastId.
			html mdlIconToggleLabel: 'format_bold' ]
"
Class {
	#name : #MDLIconToggleContainer,
	#superclass : #WALabelTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #'initialize-release' }
MDLIconToggleContainer >> initialize [
	super initialize.
	self class: 'mdl-icon-toggle'.
	self class: 'mdl-js-icon-toggle'
]

{ #category : #options }
MDLIconToggleContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLIconToggleContainer >> rippleEffectIf: aBoolean [
	aBoolean ifTrue: [ self class: 'mdl-js-ripple-effect' ]
]
