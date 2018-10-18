"
Description
--------------------

I am a brush to create MDL buttons.

Example
--------------------

	html mdlButton
		raised;
		accentColor;
		rippleEffect;
		with: 'Button'
"
Class {
	#name : #MDLButton,
	#superclass : #WAButtonTag,
	#traits : 'TMDLButton',
	#classTraits : 'TMDLButton classTrait',
	#instVars : [
		'tag'
	],
	#category : 'Material-Design-Lite-Components-Buttons'
}

{ #category : #converting }
MDLButton >> asLabel [
	tag := 'label'
]

{ #category : #initialization }
MDLButton >> initialize [
	super initialize.
	self class: 'mdl-button'.
	self class: 'mdl-js-button'.
	tag := super tag
]

{ #category : #options }
MDLButton >> labelIcon [
	self
		asLabel;
		icon
]

{ #category : #options }
MDLButton >> labelIcon: aString [
	self
		asLabel;
		icon: aString
]

{ #category : #options }
MDLButton >> resetType [
	"By default the type will be `submit`. This option remove the type."
	
	type := nil
]

{ #category : #accessing }
MDLButton >> tag [
	^ tag
]
