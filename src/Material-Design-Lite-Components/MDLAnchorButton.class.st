"
Description
--------------------

I am a brush to create MDL anchor buttons.

Example
--------------------

	html mdlAnchorButton
		callback: [ 'Test' crLog ];
		raised;
		accentColor;
		rippleEffect;
		with: 'Button'
 
"
Class {
	#name : #MDLAnchorButton,
	#superclass : #WAAnchorTag,
	#traits : 'TMDLButton',
	#classTraits : 'TMDLButton classTrait',
	#category : #'Material-Design-Lite-Components-Buttons'
}

{ #category : #initialization }
MDLAnchorButton >> initialize [
	super initialize.
	self class: 'mdl-button'.
	self class: 'mdl-js-button'.
	
]
