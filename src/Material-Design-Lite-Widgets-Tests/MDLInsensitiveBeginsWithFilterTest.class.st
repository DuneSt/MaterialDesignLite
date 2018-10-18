Class {
	#name : #MDLInsensitiveBeginsWithFilterTest,
	#superclass : #MDLAbstractFilterTest,
	#category : 'Material-Design-Lite-Widgets-Tests-List'
}

{ #category : #helpers }
MDLInsensitiveBeginsWithFilterTest >> actualClass [
	^ MDLInsensitiveBeginsWithFilter
]

{ #category : #tests }
MDLInsensitiveBeginsWithFilterTest >> testFormatedElementMatches [
	self assert: (self actualClass formatedElement: 'test' matches: 'test').
	self assert: (self actualClass formatedElement: 'Test' matches: 'test' ).
	self deny: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).
]

{ #category : #tests }
MDLInsensitiveBeginsWithFilterTest >> testSelectMatchingFromFormatWith [
	self assertCollection: (self actualClass selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest') format: [ :each | 'a' , each ] with: 'atest') hasSameElements: #('test' 'Test')
]
