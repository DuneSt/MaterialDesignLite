"
I am the magritte decorator for the report, you have to include MDLMAReport >> #cssStylesheet to your project in order to have a working table header
"
Class {
	#name : #MDLMAReport,
	#superclass : #MAReport,
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #css }
MDLMAReport class >> cssStylesheet [
	"There is an anchor inside the table header when the column is sortable, i can't change its style, so here is a css stylesheet that has to be included in your app ..."
	self flag: #itBothersMe.
	^'th a {
		color: rgba(0,0,0,.54);
   		text-decoration: none;
		font-weight: 700;
 	  }'
]

{ #category : #accessing }
MDLMAReport >> batchSizePossibilities [
	^ properties at: #batchSizePossibilities ifAbsent: [ self defaulBatchSize ]
]

{ #category : #accessing }
MDLMAReport >> batchSizePossibilities: aCollection [
	^ properties at: #batchSizePossibilities put: aCollection
]

{ #category : #accessing }
MDLMAReport >> defaulBatchSize [
	^#(5 10 50)
]

{ #category : #accessing }
MDLMAReport >> defaulShowBatchSize [
	^ true
]

{ #category : #'rendering-table' }
MDLMAReport >> initialize [
	super initialize.
	self sorterStyles:	{'mdl-data-table__header--sorted-descending' .'mdl-data-table__header--sorted-ascending'}
]

{ #category : #'rendering-batch' }
MDLMAReport >> renderBatchFirstOn: html [
	self isOnFirstPage
		ifFalse: [ 
			html anchor
				callback: [ self batchPage: self defaultBatchPage ];
				with: [ 
							html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'skip_previous' ] ] ]
		ifTrue: [ html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'skip_previous' ] ].
	html space
]

{ #category : #'rendering-batch' }
MDLMAReport >> renderBatchItemsOn: html [
	| position |
	position := self batchPage - 1 * self batchSize.
	html text: '	'.
	html text: (position + 1) asString , ' - ' , (position + self batchSize min: rows size) asString , '  of ' , (self rows size) asString.
	html text: '	'
]

{ #category : #'rendering-batch' }
MDLMAReport >> renderBatchLastOn: html [
	self isOnLastPage
		ifFalse: [ 
			html anchor
				callback: [ self batchPage: self batchMaxPages ];
				with: [ 
							html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'skip_next' ] ] ]
		ifTrue: [ 
			html mdlButton
				colored;
				icon;
				with: [ html mdlIcon: 'skip_next' ] ]
]

{ #category : #'rendering-batch' }
MDLMAReport >> renderBatchNextOn: html [
	self isOnLastPage
		ifFalse: [ 
			html anchor
				callback: [ self nextPage ];
				with: [ 
							html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'navigate_next' ] ] ]
		ifTrue: [ 
			html mdlButton
				colored;
				icon;
				with: [ html mdlIcon: 'navigate_next' ] ].
	html space
]

{ #category : #'rendering-batch' }
MDLMAReport >> renderBatchPreviousOn: html [
	self isOnFirstPage
		ifFalse: [ 
			html anchor
				callback: [ self previousPage ];
				with: [ 
							html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'navigate_before' ] ] ]
		ifTrue: [ 
			html mdlButton
				colored;
				icon;
				with: [ html mdlIcon: 'navigate_before' ] ].
	html space
]

{ #category : #'rendering-table' }
MDLMAReport >> renderBatchSizeCustomizationOn: html [
	html text: 'Rows per page: '.
	html
		render:
			((MDLMenuButtonWidget
				possibilities: self batchSizePossibilities
				label: #asString
				action: [ :o | self batchSize: o ]
				choosingText: self batchSize) sortBlock: [ :a :b | a key asInteger <= b key asInteger ]) yourself
]

{ #category : #rendering }
MDLMAReport >> renderContentOn: html [
					html mdlTable
						style: 'width: 100%; border: none';
						id: self ajaxId;
						with: [ self renderTableOn: html ]  
]

{ #category : #'rendering-table' }
MDLMAReport >> renderTableBatchOn: html [
	self hasMoreThanOnePage ifTrue: [
		html tableRow: [
			html tableData
				class: 'batch';
				colSpan: self visibleColumns size;
				with: [
					self showBatchSize
						ifTrue: [ self renderBatchSizeCustomizationOn: html ].
					self showBatchPages
						ifTrue: [ self renderBatchItemsOn: html ].
					self showBatchFirstLast
						ifTrue: [ self renderBatchFirstOn: html ].
					self showBatchPreviousNext
						ifTrue: [ self renderBatchPreviousOn: html ].
					self showBatchPreviousNext
						ifTrue: [ self renderBatchNextOn: html ].
					self showBatchFirstLast
						ifTrue: [ self renderBatchLastOn: html ] ] ] ]
]

{ #category : #'rendering-table' }
MDLMAReport >> renderTableFootOn: html [
		self visibleColumns do: [ :each |
			each renderFootCellOn: html ]
]

{ #category : #'rendering-table' }
MDLMAReport >> renderTableHeadOn: html [
	html tableRow: [
		self visibleColumns do: [ :each |
			each renderHeadCellOn: html ] ]
]

{ #category : #rendering }
MDLMAReport >> renderTableOn: html [
	self showCaption
		ifTrue: [ self renderTableCaptionOn: html ].
	self showSummary
		ifTrue: [ self renderTableSummaryOn: html ].
	html tableHead: [
		self showHeader
			ifTrue: [ self renderTableHeadOn: html ].
		self showFilter
			ifTrue: [ self renderTableFilterOn: html ] ].

	((self showBatch
		and: [ self hasMoreThanOnePage ])
		or: [ self showFooter ]) ifTrue: [
			"we must not produce an empty tfoot element, this is not valid xhtml"
			html tableFoot: [
				self showFooter
					ifTrue: [ self renderTableFootOn: html ].
				self showBatch
					ifTrue: [ self renderTableBatchOn: html ] ] ].

	html tableBody: [
		self showBody
			ifTrue: [ self renderTableBodyOn: html ] ]
]

{ #category : #'as yet unclassified' }
MDLMAReport >> showBatchSize [
	^ properties at: #showBatchSize ifAbsent: [ self defaulShowBatchSize ]
]

{ #category : #'as yet unclassified' }
MDLMAReport >> showBatchSize: aBoolean [
	^ properties at: #showBatchSize put: aBoolean
]
