Class {
	#name : #MDLPseudoRegexFilterTest,
	#superclass : #MDLAbstractFilterTest,
	#category : 'Material-Design-Lite-Widgets-Tests-List'
}

{ #category : #helpers }
MDLPseudoRegexFilterTest >> actualClass [
	^ MDLPseudoRegexFilter
]

{ #category : #tests }
MDLPseudoRegexFilterTest >> testAdaptPattern [
	self assert: (self actualClass adaptPattern: 'test') equals: '.*test.*'.
	self assert: (self actualClass adaptPattern: 'tes*t') equals: 'tes.*t'
]

{ #category : #tests }
MDLPseudoRegexFilterTest >> testFormatedElementMatches [
	self assert: (self actualClass formatedElement: 'test' matches: 'test.*' asRegexIgnoringCase).
	self assert: (self actualClass formatedElement: 'Test' matches: 'test.*' asRegexIgnoringCase).
	self assert: (self actualClass formatedElement: 'testToto' matches: 'test.*' asRegexIgnoringCase).
	self deny: (self actualClass formatedElement: 'anothertest' matches: 'test.*' asRegexIgnoringCase)
]

{ #category : #tests }
MDLPseudoRegexFilterTest >> testSelectMatchingFromFormatWith [
	self
		assertCollection:
			(self actualClass selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2' 'anothertest2' 'testAnother') format: [ :each | (each copyReplaceAll: 'test' with: 'atest') copyReplaceAll: 'Test' with: 'aTest' ] with: '^atest*')
		hasSameElements: #('test' 'Test' 'testAnother').
		
	'^atest.*' asRegexIgnoringCase matches: 'atest'
]
