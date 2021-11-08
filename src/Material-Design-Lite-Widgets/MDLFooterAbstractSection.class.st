Class {
	#name : #MDLFooterAbstractSection,
	#superclass : #Object,
	#category : 'Material-Design-Lite-Widgets-Footer'
}

{ #category : #testing }
MDLFooterAbstractSection >> isNilSection [
	^ false
]

{ #category : #rendering }
MDLFooterAbstractSection >> renderSectionOn: html [
	self subclassResponsibility 
]
