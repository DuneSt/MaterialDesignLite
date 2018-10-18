"
A MDLCardInnerDivTest is a test class for testing the behavior of MDLCardInnerDiv
"
Class {
	#name : #MDLCardInnerDivTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #testing }
MDLCardInnerDivTest class >> isAbstract [
	^ self = MDLCardInnerDivTest
]

{ #category : #tests }
MDLCardInnerDivTest >> testBorder [
	self subclassResponsibility
]

{ #category : #tests }
MDLCardInnerDivTest >> testExpand [
	self subclassResponsibility
]
