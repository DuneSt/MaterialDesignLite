"
Description
--------------------

I am a brush to create a subtitle to a card.

"
Class {
	#name : 'MDLCardSubtitleText',
	#superclass : 'MDLDivTag',
	#category : 'Material-Design-Lite-Components-Cards',
	#package : 'Material-Design-Lite-Components',
	#tag : 'Cards'
}

{ #category : 'initialization' }
MDLCardSubtitleText >> initialize [
	super initialize.
	self class: 'mdl-card__subtitle-text'
]
