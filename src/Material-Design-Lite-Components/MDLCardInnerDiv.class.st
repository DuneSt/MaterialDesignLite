"
Description
--------------------

I'm a Card inner div. Place me or my subclasses into a Card.

"
Class {
	#name : #MDLCardInnerDiv,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Cards'
}

{ #category : #options }
MDLCardInnerDiv >> border [
	self class: 'mdl-card--border'
]

{ #category : #options }
MDLCardInnerDiv >> expand [
	self class: 'mdl-card--expand'
]
