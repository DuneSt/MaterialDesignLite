"
I represent a widget to easily use pagination
"
Class {
	#name : #MDLPaginationWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'headings',
		'groups',
		'currentPage',
		'pageSize',
		'tableBodyId',
		'arrowsId',
		'items',
		'displayBlock'
	],
	#category : 'Material-Design-Lite-Widgets-Pagination'
}

{ #category : #deprecation }
MDLPaginationWidget class >> isDeprecated [
	"Currently we have a duplication of widgets with the MDLPaginationWidget and the sortable table. This component will be removed in the next major release."

	^ true
]

{ #category : #'instance creation' }
MDLPaginationWidget class >> new [
	self error: 'Use #newWithItems: instead'
]

{ #category : #'instance creation' }
MDLPaginationWidget class >> newWithItems: aCollection [
	^ super new items: aCollection
]

{ #category : #adding }
MDLPaginationWidget >> addHeading: aStringOrBlock [
	headings add: aStringOrBlock
]

{ #category : #accessing }
MDLPaginationWidget >> display: aOneArgBlock [
	displayBlock := aOneArgBlock
]

{ #category : #accessing }
MDLPaginationWidget >> goToNextPage [
	currentPage < groups size
		ifTrue: [ currentPage := currentPage + 1 ]
]

{ #category : #accessing }
MDLPaginationWidget >> goToPreviousPage [
	currentPage = 1
		ifFalse: [ currentPage := currentPage - 1 ]
]

{ #category : #accessing }
MDLPaginationWidget >> groupsOfItems: aCollection [
	groups := aCollection groupsOf: pageSize
]

{ #category : #accessing }
MDLPaginationWidget >> headings: aCollection [
	headings := aCollection
]

{ #category : #initialization }
MDLPaginationWidget >> initialize [
	super initialize.
	pageSize := 10.
	currentPage := 1.
	headings := OrderedCollection new
]

{ #category : #accessing }
MDLPaginationWidget >> items: aCollection [
	items := aCollection asOrderedCollection.
	groups := items groupsOf: pageSize
]

{ #category : #private }
MDLPaginationWidget >> onCompleteScriptOn: html [
	^ html jQuery
		script: [ :s | 
			s
				<<
					((html jQuery id: tableBodyId) load
						html: [ :ajaxHtml | self renderTableBodyOn: ajaxHtml ]);
				<<
					((html jQuery id: arrowsId) load
						html: [ :ajaxHtml | self renderTableArrowsOn: ajaxHtml ]) ]
]

{ #category : #accessing }
MDLPaginationWidget >> pageSize: anObject [
	"Set the pageSize and update groups"

	groups := groups concatenation asOrderedCollection groupsOf: anObject.
	pageSize := anObject
]

{ #category : #rendering }
MDLPaginationWidget >> renderButtonWithIcon: aString callbackMethod: aSymbol disabled: aBoolean on: html [
	html mdlButton
		icon;
		rippleEffect;
		disabled: aBoolean;
		onClick: [ html jQuery ajax
				callback: [ self perform: aSymbol ];
				onComplete: (self onCompleteScriptOn: html) ]
			if: aBoolean not;
		with: [ html mdlIcon: aString ]
]

{ #category : #rendering }
MDLPaginationWidget >> renderContentOn: html [
	html div
		class: 'mdl-pagination-widget';
		with: [ self renderPaginationWidgetOn: html ]
]

{ #category : #rendering }
MDLPaginationWidget >> renderPaginationWidgetOn: html [
	self renderTableOn: html
]

{ #category : #rendering }
MDLPaginationWidget >> renderTableArrowsOn: html [
	self
		renderButtonWithIcon: 'keyboard_arrow_left'
		callbackMethod: #goToPreviousPage
		disabled: currentPage = 1
		on: html.
	html
		text:
			(String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: currentPage greaseString;
						nextPutAll: ' / ';
						nextPutAll: groups size greaseString ]).
	self
		renderButtonWithIcon: 'keyboard_arrow_right'
		callbackMethod: #goToNextPage
		disabled: currentPage = groups size
		on: html
]

{ #category : #rendering }
MDLPaginationWidget >> renderTableBodyOn: html [
	(groups at: currentPage)
		do: [ :anObject | 
			html
				tableRow: [ (displayBlock ifNotNil: [ displayBlock value: anObject ] ifNil: [ anObject tableItems ])
						do: [ :aStringOrBlock | html mdlTableCell: aStringOrBlock ] ] ]
]

{ #category : #rendering }
MDLPaginationWidget >> renderTableHeadOn: html [
	html
		tableHead: [ headings do: [ :aStringOrBlock | html mdlTableHeading: aStringOrBlock ] ]
]

{ #category : #rendering }
MDLPaginationWidget >> renderTableOn: html [
	| table |
	table := html mdlTable.
	self addPropertiesToBrush: table.
	table
		with: [ self renderTableHeadOn: html.
			html tableBody
				id: (tableBodyId := html nextId);
				with: [ self renderTableBodyOn: html ] ].
	html div
		class: 'mdl-pagination__arrows';
		id: (arrowsId := html nextId);
		with: [ self renderTableArrowsOn: html ]
]
