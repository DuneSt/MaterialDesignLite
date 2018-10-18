"
Description
--------------------

The Material Design Lite (MDL) switch component is an enhanced version of the standard HTML <input type=""checkbox""> element. A switch consists of a short horizontal ""track"" with a prominent circular state indicator and, typically, text that clearly communicates a binary condition that will be set or unset when the user clicks or touches it.

Example
--------------------

	html mdlSwitchContainer
		rippleEffect;
		style: 'width: 150px;';
		for: html nextId;
		with: [ html mdlSwitch
				value: true;
				id: html lastId.
			html mdlSwitchLabel: 'On / Off' ]
"
Class {
	#name : #MDLSwitchContainer,
	#superclass : #WALabelTag,
	#category : 'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLSwitchContainer >> initialize [
	super initialize.
	self class: 'mdl-switch'.
	self class: 'mdl-js-switch'
]

{ #category : #options }
MDLSwitchContainer >> rippleEffect [
	self class: 'mdl-js-ripple-effect'
]

{ #category : #options }
MDLSwitchContainer >> rippleEffectIf: aBoolean [
	aBoolean ifTrue: [ self rippleEffect ]
]
