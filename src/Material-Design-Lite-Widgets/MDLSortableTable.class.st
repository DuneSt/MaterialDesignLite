"
Sortable table, renders a table and adds the necessary behavior to navigate trough the table

    Instance Variables
	elementsToShow: number of rows that will be rendered
	header: a table with the table headers ( auto conversion from object )
	position:	 the index of the first row to render
	rows: a table with all the rows
	selectable: a boolean saying that the cells can be selected or not
	ajaxOnCompleteHook: a String containing some JS code to be executed after we changed of page. By default it will update the MDL components to initialize the new ones.
"
Class {
	#name : #MDLSortableTable,
	#superclass : #WAComponent,
	#instVars : [
		'title',
		'header',
		'rows',
		'elementsToShow',
		'unsortedRows',
		'position',
		'rowsPerPagePossibilities',
		'selectable',
		'id',
		'ajaxOnCompleteHook',
		'tableStyle',
		'rowsCache'
	],
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #accessing }
MDLSortableTable >> ajaxOnCompleteHook [
	"I am a hook to let the user add some javascript after the rendering of a new page. By default I will update the MDL components to initialize the new ones that might be in the table if needed."

	^ ajaxOnCompleteHook ifNil: [ 'componentHandler.upgradeDom();' ]
]

{ #category : #accessing }
MDLSortableTable >> ajaxOnCompleteHook: anObject [
	ajaxOnCompleteHook := anObject
]

{ #category : #javascript }
MDLSortableTable >> ajaxUpdateScriptFrom: html [
	^ html jQuery
		script: [ :s | 
			s
				<<
					((html jQuery id: id) load
						html: [ :ajaxHtml | self renderTableContentOn: ajaxHtml ];
						onComplete: self ajaxOnCompleteHook) ]
]

{ #category : #accessing }
MDLSortableTable >> elementsToShow [
	^ elementsToShow
]

{ #category : #accessing }
MDLSortableTable >> elementsToShow: anObject [
	elementsToShow := anObject
]

{ #category : #rendering }
MDLSortableTable >> ensureCurrentPageIsVisible [
	"In some case the elements to show can change. If we currently are in a page that does not exist anymore since the number of elements decreased, we should reset the position."

	self position > rowsCache size
		ifTrue: [ self position: 1 ]
]

{ #category : #accessing }
MDLSortableTable >> header [
	^ header
]

{ #category : #accessing }
MDLSortableTable >> header: aCollection [
	header := aCollection collect: [ :each | each asMDLSortableTableHeader ]
]

{ #category : #rendering }
MDLSortableTable >> indexOfLastRowToShow [
	^ rowsCache size min: position + elementsToShow - 1
]

{ #category : #initialization }
MDLSortableTable >> initialize [
	super initialize.
	position := 1.
	rows := #().
	header := #().
	unsortedRows := #().
	self rowsPerPagePossibilities: #(10 50 100).
	selectable := false
]

{ #category : #accessing }
MDLSortableTable >> itemsByPageSelectionComponent [
	^ (MDLMenuButtonWidget
		possibilities: rowsPerPagePossibilities
		label: #asString
		action: [ :o | self elementsToShow: o ]
		choosingText: self elementsToShow asString)
		sortBlock: [ :a :b | a key asInteger <= b key asInteger ];
		yourself
]

{ #category : #actions }
MDLSortableTable >> nextPosition [
	position + elementsToShow < rowsCache size
		ifTrue: [ self position: position + elementsToShow ]
]

{ #category : #accessing }
MDLSortableTable >> noPagination [
	self rowsPerPagePossibilities: {(Float infinity)}
]

{ #category : #accessing }
MDLSortableTable >> position [
	^ position
]

{ #category : #accessing }
MDLSortableTable >> position: anObject [
	position := anObject
]

{ #category : #actions }
MDLSortableTable >> previousPosition [
	self position: ((position - elementsToShow) max: 1)
]

{ #category : #rendering }
MDLSortableTable >> renderButtonTriggering: aMethod withIcon: aSymbol disabled: isDisabled on: html [
	html mdlButton
		bePush;
		colored;
		icon;
		disabled: isDisabled;
		onClick: [ html jQuery ajax
				callback: [ self perform: aMethod ];
				onSuccess: (self ajaxUpdateScriptFrom: html) ]
			if: isDisabled not;
		with: [ html mdlIcon: aSymbol ]
]

{ #category : #rendering }
MDLSortableTable >> renderContentOn: html [
	html
		mdlGrid: [ 
			html mdlCard
				shadow: 2;
				style: 'width: 100%; overflow: initial;';
				class: self tableStyle if: self tableStyle isNotNil;
				id: (id := html nextId);
				with: [ self renderTableContentOn: html ] ]
]

{ #category : #rendering }
MDLSortableTable >> renderFooterPaginationOn: html [
	html mdlCardTextContainer
		style: 'width: calc(100% - 32px);';
		with: [ 
					html div
						mdlTypographyTextRight;
						with: [ 
									html text: 'Rows per page: '.
									html render: self itemsByPageSelectionComponent.
									self renderPagesInfoOn: html.
									self
										renderButtonTriggering: #previousPosition
										withIcon: #keyboard_arrow_left
										disabled: position = 1
										on: html.
									self
										renderButtonTriggering: #nextPosition
										withIcon: #keyboard_arrow_right
										disabled: position + elementsToShow > rowsCache size
										on: html ] ]
]

{ #category : #rendering }
MDLSortableTable >> renderHeaderOn: html [
	html
		tableHead: [ html tableRow: [ header doWithIndex: [ :head :i | head renderContentOn: html forTable: self columnIndex: i ] ] ]
]

{ #category : #rendering }
MDLSortableTable >> renderPagesInfoOn: html [
	html
		text:
			(String
				streamContents: [ :s | 
					s
						print: position;
						nextPutAll: ' - ';
						print: self indexOfLastRowToShow;
						nextPutAll: ' of ';
						print: rowsCache size ])
]

{ #category : #rendering }
MDLSortableTable >> renderRowContentFor: cells on: html [
	header
		doWithIndex: [ :headerCell :columnIndex | 
			| cell |
			(headerCell tableCellOn: html)
				with:
					((cell := cells at: columnIndex) isBlock
						ifTrue: [ [ cell cull: html ] ]
						ifFalse: [ cell ]) ]
]

{ #category : #rendering }
MDLSortableTable >> renderRowsOn: html [
	((position to: self indexOfLastRowToShow) collect: [ :rowIndex | rowsCache at: rowIndex ])
		do: [ :cells | html tableRow: [ self renderRowContentFor: cells on: html ] ]
]

{ #category : #rendering }
MDLSortableTable >> renderTableContentOn: html [
	"We cache the rows because it is possible that the user give a block to execute."

	rowsCache := self rows.
	self ensureCurrentPageIsVisible.
	self title
		ifNotNil: [ 
			html mdlCardTitleContainer
				style: 'padding-left: 24px;';
				with: [ html mdlCardTitleText: self title level: 2 ] ].
	(selectable
		ifTrue: [ html mdlTable selectable ]
		ifFalse: [ html mdlTable ])
		style: 'width: 100%; border: none;';
		with: [ 
					self renderHeaderOn: html.
					self renderRowsOn: html ].
	self shouldDisplayPagination
		ifTrue: [ self renderFooterPaginationOn: html ]
]

{ #category : #accessing }
MDLSortableTable >> rows [
	^ rows value
]

{ #category : #accessing }
MDLSortableTable >> rows: anObject [
	rows := anObject.
	unsortedRows := anObject
]

{ #category : #accessing }
MDLSortableTable >> rowsPerPagePossibilities [
	^ rowsPerPagePossibilities
]

{ #category : #accessing }
MDLSortableTable >> rowsPerPagePossibilities: aCollection [
	rowsPerPagePossibilities := aCollection.
	aCollection ifNotEmpty: [ self elementsToShow: aCollection first ]
]

{ #category : #accessing }
MDLSortableTable >> selectable [
	^ selectable
]

{ #category : #accessing }
MDLSortableTable >> selectable: anObject [
	selectable := anObject
]

{ #category : #testing }
MDLSortableTable >> shouldDisplayPagination [
	^ self rowsPerPagePossibilities min < rowsCache size
]

{ #category : #sorting }
MDLSortableTable >> sortAscendingAtRow: aRowIndex [
	self sortAtRow: aRowIndex using: #>
]

{ #category : #sorting }
MDLSortableTable >> sortAtRow: aRowIndex using: aSelector [
	header
		do: [ :each | 
			(header at: aRowIndex) = each
				ifFalse: [ each unsort ] ].
	rows := self rows
		sorted: [ :cell :anotherCell | 
			[ (cell at: aRowIndex) perform: aSelector with: (anotherCell at: aRowIndex) ]
				on: MessageNotUnderstood "If the element does not implements the comparators then I should not sort them."
				do: [ true ]	 ]
]

{ #category : #sorting }
MDLSortableTable >> sortDescendingAtRow: aRowIndex [
	self sortAtRow: aRowIndex using: #<
]

{ #category : #accessing }
MDLSortableTable >> tableStyle [
	^ tableStyle
]

{ #category : #accessing }
MDLSortableTable >> tableStyle: anObject [
	tableStyle := anObject
]

{ #category : #accessing }
MDLSortableTable >> title [
	^ title
]

{ #category : #accessing }
MDLSortableTable >> title: anObject [
	title := anObject
]

{ #category : #sorting }
MDLSortableTable >> unsort [
	rows := unsortedRows 
]
