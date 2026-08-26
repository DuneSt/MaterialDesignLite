"
Description
--------------------

I am a brush to create a medias in a card.
"
Class {
	#name : 'MDLCardMedia',
	#superclass : 'MDLCardInnerDiv',
	#category : 'Material-Design-Lite-Components-Cards',
	#package : 'Material-Design-Lite-Components',
	#tag : 'Cards'
}

{ #category : 'initialization' }
MDLCardMedia >> initialize [
	super initialize.
	self class: 'mdl-card__media'
]
