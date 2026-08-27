"
TODO
"
Class {
	#name : 'MDLMAFormRenderer',
	#superclass : 'MAComponentRenderer',
	#category : 'Material-Design-Lite-Magritte-Core',
	#package : 'Material-Design-Lite-Magritte',
	#tag : 'Core'
}

{ #category : 'rendering' }
MDLMAFormRenderer >> renderElement: aDescription [
	self renderControl: aDescription
]
