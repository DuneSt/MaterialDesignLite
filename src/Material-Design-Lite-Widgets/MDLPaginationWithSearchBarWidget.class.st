"
I represent a pagination with a dynamic search

By default the label is 'Search...' and testingBlock = [ :anObject | anObject matches: aString ], so you can implement matches in the class of your object
"
Class {
	#name : #MDLPaginationWithSearchBarWidget,
	#superclass : #MDLPaginationWidget,
	#instVars : [
		'searchLabel',
		'paginationWidgetId',
		'testingBlock'
	],
	#category : 'Material-Design-Lite-Widgets-Pagination'
}

{ #category : #initialization }
MDLPaginationWithSearchBarWidget >> initialize [
	super initialize.
	searchLabel := 'Search...'.
	testingBlock := [ :anObject :aString | anObject matches: aString ]
]

{ #category : #rendering }
MDLPaginationWithSearchBarWidget >> renderPaginationWidgetOn: html [
	paginationWidgetId := html nextId.
	self renderSearchbarOn: html.
	html div
		id: paginationWidgetId;
		with: [ self renderTableOn: html ]
]

{ #category : #'private-rendering' }
MDLPaginationWithSearchBarWidget >> renderSearchbarOn: html [
	| inputId |
	html mdlTextFieldContainer
		class: 'mdl-pagination-widget-searchbar';
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: (inputId := html nextId);
				with: searchLabel.
			html mdlTextFieldInput
				id: inputId;
				callback: [ :aString | self updateItemsMatching: aString ];
				onKeyUp:
					(html jQuery ajax
						serializeThis;
						onComplete:
							((html jQuery id: paginationWidgetId) load
								html: [ :ajaxHtml | self renderTableOn: ajaxHtml ])) ]
]

{ #category : #accessing }
MDLPaginationWithSearchBarWidget >> searchLabel: anObject [
	searchLabel := anObject
]

{ #category : #accessing }
MDLPaginationWithSearchBarWidget >> testingBlock: anObject [
	testingBlock := anObject
]

{ #category : #updating }
MDLPaginationWithSearchBarWidget >> updateItemsMatching: aString [
	aString isEmptyOrNil
		ifTrue: [ self groupsOfItems: items ]
		ifFalse: [ self
				groupsOfItems: (items select: [ :anObject | testingBlock value: anObject value: aString ]) ]
]
