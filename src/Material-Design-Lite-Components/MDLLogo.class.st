"
Description
--------------------

I am a brush to create a MDL logo.
"
Class {
	#name : 'MDLLogo',
	#superclass : 'MDLDivTag',
	#category : 'Material-Design-Lite-Components-Footer',
	#package : 'Material-Design-Lite-Components',
	#tag : 'Footer'
}

{ #category : 'initialization' }
MDLLogo >> initialize [
	super initialize.
	self class: 'mdl-logo'
]
