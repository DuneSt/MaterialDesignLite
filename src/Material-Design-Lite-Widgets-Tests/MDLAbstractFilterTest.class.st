Class {
	#name : #MDLAbstractFilterTest,
	#superclass : #TestCase,
	#category : 'Material-Design-Lite-Widgets-Tests-List'
}

{ #category : #testing }
MDLAbstractFilterTest class >> isAbstract [
	^ self = MDLAbstractFilterTest
]

{ #category : #helpers }
MDLAbstractFilterTest >> actualClass [
	^ self subclassResponsibility
]

{ #category : #tests }
MDLAbstractFilterTest >> testFormatedElementMatches [
	self subclassResponsibility
]

{ #category : #tests }
MDLAbstractFilterTest >> testSelectMatchingFromFormatWith [
	self subclassResponsibility
]
