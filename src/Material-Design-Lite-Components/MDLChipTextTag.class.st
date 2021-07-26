"
Description
--------------------

I am just some text inside a MDLChip.
"
Class {
	#name : #MDLChipTextTag,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Chips'
}

{ #category : #initialization }
MDLChipTextTag >> initialize [
	super initialize.
	self class: #'mdl-chip__text'
]

{ #category : #accessing }
MDLChipTextTag >> tag [
	^ 'span'
]
