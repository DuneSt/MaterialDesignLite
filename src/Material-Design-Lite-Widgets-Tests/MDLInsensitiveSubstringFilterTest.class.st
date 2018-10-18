Class {
	#name : #MDLInsensitiveSubstringFilterTest,
	#superclass : #MDLAbstractFilterTest,
	#category : 'Material-Design-Lite-Widgets-Tests-List'
}

{ #category : #helpers }
MDLInsensitiveSubstringFilterTest >> actualClass [
	^ MDLInsensitiveSubstringFilter
]

{ #category : #tests }
MDLInsensitiveSubstringFilterTest >> testFormatedElementMatches [
	self assert: (self actualClass formatedElement: 'test' matches: 'test').
	self assert: (self actualClass formatedElement: 'Test' matches: 'test' ).
	self assert: (self actualClass formatedElement: 'anothertest' matches: 'test').
	self assert: (self actualClass formatedElement: 'anotherTest' matches: 'test' ).
	self assert: (self actualClass formatedElement: 'anothertest2' matches: 'test').
	self assert: (self actualClass formatedElement: 'anotherTest2' matches: 'test' ).
	self deny: (self actualClass formatedElement: 'anothertet2' matches: 'test' )
]

{ #category : #tests }
MDLInsensitiveSubstringFilterTest >> testSelectMatchingFromFormatWith [
	self
		assertCollection:
			(self actualClass
				selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2' 'anothertest2' 'somethingElse')
				format: [ :each | (each copyReplaceAll: 'test' with: 'atest') copyReplaceAll: 'Test' with: 'aTest' ]
				with: 'atest')
		hasSameElements: #('test' 'anothertest2' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2')
]
