"
A MDLDisplayPaginatedTableContentTest is a test class for testing the behavior of MDLDisplayPaginatedTableContent
"
Class {
	#name : #MDLDisplayPaginatedTableContentTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Widgets-Tests-Table'
}

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testIndexOfLastRowToShow [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
					
	self assert: contentDisplayStrategy rowsPerPage equals: 5.
	self assert: contentDisplayStrategy indexOfLastRowToShow equals: 5.
	
	contentDisplayStrategy rowsPerPage: 10.
	
	self assert: contentDisplayStrategy rowsPerPage equals: 10.
	self assert: contentDisplayStrategy indexOfLastRowToShow equals: 10.
	
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testInitialize [
	| contentDisplayStrategy |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	
	self assert: contentDisplayStrategy position equals: contentDisplayStrategy initialPosition.
	self assert: contentDisplayStrategy rowsPerPagePossibilities equals: contentDisplayStrategy defaultRowsPerPagePossibilities
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testIsAtEnd [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
					
	self assert: contentDisplayStrategy position equals: contentDisplayStrategy initialPosition.
	contentDisplayStrategy rowsPerPage: 50.
	
	self deny: contentDisplayStrategy isAtEnd.
	self assert: contentDisplayStrategy position equals: contentDisplayStrategy initialPosition.
	
	contentDisplayStrategy nextPosition.
	
	self assert: contentDisplayStrategy isAtEnd.
	self assert: contentDisplayStrategy position equals: 51.
	
	"Do not move if we call #nextPosition again."
	contentDisplayStrategy nextPosition.
	
	self assert: contentDisplayStrategy isAtEnd.
	self assert: contentDisplayStrategy position equals: 51.
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testNextPosition [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
					
	self assert: contentDisplayStrategy position equals: contentDisplayStrategy initialPosition.
	self assert: contentDisplayStrategy rowsPerPage equals: 5.
	
	contentDisplayStrategy nextPosition.
	
	self assert: contentDisplayStrategy position equals: 6.
	
	contentDisplayStrategy nextPosition.
	
	self assert: contentDisplayStrategy position equals: 11.
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testNextPosition2 [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
					
	self assert: contentDisplayStrategy position equals: contentDisplayStrategy initialPosition.
	contentDisplayStrategy rowsPerPage: 10.
	
	contentDisplayStrategy nextPosition.
	
	self assert: contentDisplayStrategy position equals: 11.
	
	contentDisplayStrategy nextPosition.
	
	self assert: contentDisplayStrategy position equals: 21.
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testPreviousPosition [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
	contentDisplayStrategy rowsPerPage: 10.
	contentDisplayStrategy position: 91.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 81.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 71.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 61.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 51.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 41.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 31.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 21.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 11.
	
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 1.
	
	"Check it does nothing once we reached beginning of collection."
	contentDisplayStrategy previousPosition.
	self assert: contentDisplayStrategy position equals: 1.
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testRenderPagesInfoOn [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
	self
		assert: [ :html | contentDisplayStrategy renderPagesInfoOn: html ]
		generates: '1 - 5 of 100'.
	
	contentDisplayStrategy nextPosition.
	
	self
		assert: [ :html | contentDisplayStrategy renderPagesInfoOn: html ]
		generates: '6 - 10 of 100'.
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testRenderPagesInfoOn2 [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
	
	contentDisplayStrategy rowsPerPage: 10.
	
	self
		assert: [ :html | contentDisplayStrategy renderPagesInfoOn: html ]
		generates: '1 - 10 of 100'.
	
	contentDisplayStrategy nextPosition.
	
	self
		assert: [ :html | contentDisplayStrategy renderPagesInfoOn: html ]
		generates: '11 - 20 of 100'.
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testRowsToDisplayDo [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
					
	self assertCollection: (Array streamContents: [ :stream | contentDisplayStrategy rowsToDisplayDo: [ :i | stream nextPut: i ] ]) equals: #(1 2 3 4 5).
	
	contentDisplayStrategy nextPosition.
	
	self assertCollection: (Array streamContents: [ :stream | contentDisplayStrategy rowsToDisplayDo: [ :i | stream nextPut: i ] ]) equals: #(6 7 8 9 10).
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testRowsToDisplayDo2 [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
					
	contentDisplayStrategy rowsPerPage: 10.
					
	self assertCollection: (Array streamContents: [ :stream | contentDisplayStrategy rowsToDisplayDo: [ :i | stream nextPut: i ] ]) equals: #(1 2 3 4 5 6 7 8 9 10).
	
	contentDisplayStrategy nextPosition.
	
	self assertCollection: (Array streamContents: [ :stream | contentDisplayStrategy rowsToDisplayDo: [ :i | stream nextPut: i ] ]) equals: #(11 12 13 14 15 16 17 18 19 20).
]

{ #category : #test }
MDLDisplayPaginatedTableContentTest >> testTotalNumberOfRows [
	| contentDisplayStrategy table |
	contentDisplayStrategy := MDLDisplayPaginatedTableContent new.
	table := MDLTableWidget new
					contentDisplayStrategy: contentDisplayStrategy;
					collection: (1 to: 100) asArray;
					yourself.
					
	self assert: contentDisplayStrategy totalNumberOfRows equals: table collection size.
]
