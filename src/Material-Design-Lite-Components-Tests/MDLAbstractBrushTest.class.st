Class {
	#name : #MDLAbstractBrushTest,
	#superclass : #MDLAbstractSeasideTestCase,
	#category : 'Material-Design-Lite-Components-Tests-Abstract'
}

{ #category : #testing }
MDLAbstractBrushTest class >> isAbstract [
	^ self = MDLAbstractBrushTest
]

{ #category : #tests }
MDLAbstractBrushTest >> testBareBrush [
	self subclassResponsibility
]

{ #category : #tests }
MDLAbstractBrushTest >> testWithContent [
	self subclassResponsibility
]
