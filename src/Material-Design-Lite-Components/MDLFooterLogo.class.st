"
Description
--------------------

I am a brush to create a logo inside a footer.
"
Class {
	#name : #MDLFooterLogo,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Footer'
}

{ #category : #deprecation }
MDLFooterLogo class >> isDeprecated [
	"Use MDLLogo"
	
	^ true
]

{ #category : #initialization }
MDLFooterLogo >> initialize [
	super initialize.
	self class: 'mdl-logo'
]
