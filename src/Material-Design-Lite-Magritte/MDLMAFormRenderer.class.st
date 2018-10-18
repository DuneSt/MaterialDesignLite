"
TODO
"
Class {
	#name : #MDLMAFormRenderer,
	#superclass : #MAComponentRenderer,
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #rendering }
MDLMAFormRenderer >> renderElement: aDescription [
	self renderControl: aDescription
]
