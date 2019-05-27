Class {
	#name : #MDLPaginationComponentTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#instVars : [
		'component'
	],
	#category : #'Material-Design-Lite-Extensions-Tests-Pagination'
}

{ #category : #helpers }
MDLPaginationComponentTest >> actualClass [
	^ MDLPaginationComponent 
]

{ #category : #helpers }
MDLPaginationComponentTest >> defaultNumberOfPages [
	^ 20
]

{ #category : #helpers }
MDLPaginationComponentTest >> newInstance [
	^ self actualClass numberOfPages: self defaultNumberOfPages
]

{ #category : #running }
MDLPaginationComponentTest >> setUp [
	super setUp.
	component := self newInstance
]

{ #category : #tests }
MDLPaginationComponentTest >> testCurrentPage [
	component currentPage: 10.
	self assert: component currentPage equals: 10.
	self should: [ component currentPage: -1 ] raise: SubscriptOutOfBounds.
	self should: [ component currentPage: self defaultNumberOfPages + 1 ] raise: SubscriptOutOfBounds
]

{ #category : #tests }
MDLPaginationComponentTest >> testFirstPage [
	component currentPage: 10.
	component firstPage.
	self assert: component currentPage equals: 1
]

{ #category : #tests }
MDLPaginationComponentTest >> testFirstPageInExtremCase [
	component := self actualClass numberOfPages: 0.
	component firstPage.
	self assert: component currentPage equals: 0
]

{ #category : #tests }
MDLPaginationComponentTest >> testLastPage [
	component currentPage: 10.
	component lastPage.
	self assert: component currentPage equals: self defaultNumberOfPages
]

{ #category : #tests }
MDLPaginationComponentTest >> testLastPageInExtremCase [
	component := self actualClass numberOfPages: 0.
	component lastPage.
	self assert: component currentPage equals: 0
]

{ #category : #tests }
MDLPaginationComponentTest >> testNextPage [
	component currentPage: 10.
	component nextPage.
	self assert: component currentPage equals: 11
]

{ #category : #tests }
MDLPaginationComponentTest >> testPagesButtonsToRender [
	component currentPage: 10.
	component adjacentsPagesToShow: 2.
	self assert: component pagesButtonsToRender equals: (8 to: 12).
	component adjacentsPagesToShow: 4.
	self assert: component pagesButtonsToRender equals: (6 to: 14)
]

{ #category : #tests }
MDLPaginationComponentTest >> testPreviousPage [
	component currentPage: 10.
	component previousPage.
	self assert: component currentPage equals: 9
]

{ #category : #tests }
MDLPaginationComponentTest >> testShouldShowFirstDisabledButton [
	component firstPage.
	self deny: component shouldShowFirstDisabledButton.
	component
		adjacentsPagesToShow: 3;
		currentPage: 4.
	self deny: component shouldShowFirstDisabledButton.
	component currentPage: 5.
	self assert: component shouldShowFirstDisabledButton.
	component adjacentsPagesToShow: 4.
	self deny: component shouldShowFirstDisabledButton
]

{ #category : #tests }
MDLPaginationComponentTest >> testShouldShowLastDisabledButton [
	component lastPage.
	self deny: component shouldShowLastDisabledButton.
	component
		adjacentsPagesToShow: 3;
		currentPage: self defaultNumberOfPages - 3.
	self deny: component shouldShowLastDisabledButton.
	component currentPage: self defaultNumberOfPages - 4.
	self assert: component shouldShowLastDisabledButton.
	component adjacentsPagesToShow: 4.
	self deny: component shouldShowLastDisabledButton
]

{ #category : #tests }
MDLPaginationComponentTest >> testUpdateBlockUseAjax [
	self assert: [ :html | html render: component ] generatedIncludes: '<a href="/?3">2</a>'.
	component := self actualClass numberOfPages: 20 updateBlock: [ :a :b | "something" ].
	self assert: [ :html | html render: component ] generatedIncludes: '<button onclick="$.ajax('
]
