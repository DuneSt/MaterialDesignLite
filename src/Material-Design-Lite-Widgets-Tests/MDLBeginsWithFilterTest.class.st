Class {
	#name : #MDLBeginsWithFilterTest,
	#superclass : #MDLAbstractFilterTest,
	#category : 'Material-Design-Lite-Widgets-Tests-List'
}

{ #category : #helpers }
MDLBeginsWithFilterTest >> actualClass [
	^ MDLBeginsWithFilter
]

{ #category : #tests }
MDLBeginsWithFilterTest >> testFormatedElementMatches [
	self assert: (self actualClass formatedElement: 'test' matches: 'test').
	self deny: (self actualClass formatedElement: 'Test' matches: 'test' ).
	self deny: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).
]

{ #category : #tests }
MDLBeginsWithFilterTest >> testSelectMatchingFromFormatWith [
	self assertCollection: (self actualClass selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest') format: [ :each | 'a' , each ] with: 'atest') hasSameElements: #('test')
]
