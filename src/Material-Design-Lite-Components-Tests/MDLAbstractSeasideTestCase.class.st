Class {
	#name : #MDLAbstractSeasideTestCase,
	#superclass : #TestCase,
	#category : 'Material-Design-Lite-Components-Tests-Abstract'
}

{ #category : #testing }
MDLAbstractSeasideTestCase class >> isAbstract [
	^ self = MDLAbstractSeasideTestCase
]

{ #category : #asserting }
MDLAbstractSeasideTestCase >> assert: aBlock generatedIncludes: aString [
	self
		executeWithMockContext: [ | actual |
			actual := WAHtmlCanvas builder render: aBlock.
			self assert: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]
]

{ #category : #asserting }
MDLAbstractSeasideTestCase >> assert: aBlock generatedIncludesAll: aCollection [
	self
		executeWithMockContext: [ | generated |
			generated := WAHtmlCanvas builder render: aBlock.
			aCollection do: [ :aString | self assert: (generated includesSubstring: aString) ] ]
]

{ #category : #asserting }
MDLAbstractSeasideTestCase >> assert: aBlock generates: aString [
	self executeWithMockContext: [ self assert: (WAHtmlCanvas builder render: aBlock) equals: aString ]
]

{ #category : #asserting }
MDLAbstractSeasideTestCase >> deny: aBlock generatedIncludes: aString [
	self
		executeWithMockContext: [ | actual |
			actual := WAHtmlCanvas builder render: aBlock.
			self deny: (actual includesSubstring: aString) description: actual , ' should includes ' , aString ]
]

{ #category : #asserting }
MDLAbstractSeasideTestCase >> executeWithMockContext: aBlock [
	WACurrentRequestContext use: MDLMockRequestContext new during: [ aBlock value ]
]
