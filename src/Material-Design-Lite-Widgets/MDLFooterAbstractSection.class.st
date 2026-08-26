Class {
	#name : 'MDLFooterAbstractSection',
	#superclass : 'Object',
	#category : 'Material-Design-Lite-Widgets-Footer',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Footer'
}

{ #category : 'testing' }
MDLFooterAbstractSection >> isNilSection [
	^ false
]

{ #category : 'rendering' }
MDLFooterAbstractSection >> renderSectionOn: html [
	self subclassResponsibility 
]
