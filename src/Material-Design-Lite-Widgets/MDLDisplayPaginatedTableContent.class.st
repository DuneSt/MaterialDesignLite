"
I am a pagination strategy displaying on page at a time, the content of the table.

I can be configured to control:
- #rowsPerPagePossibilities : the options available for page size.
- #rowsToShow : the current number of rows per page that I show (if nil, I take the first number in #rowsPerPagePossibilities).
- #ajaxOnCompleteHook : an ajax hook to call when I refresh the content of the table.
"
Class {
	#name : #MDLDisplayPaginatedTableContent,
	#superclass : #MDLTableContentDisplayStrategy,
	#instVars : [
		'position',
		'rowsToShow',
		'rowsPerPagePossibilities',
		'ajaxOnCompleteHook'
	],
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #'instance creation' }
MDLDisplayPaginatedTableContent class >> rowsPerPagePossibilities: rowsPerPagePossibilities [
	^ self new
		rowsPerPagePossibilities: rowsPerPagePossibilities;
		yourself
]

{ #category : #'instance creation' }
MDLDisplayPaginatedTableContent class >> rowsPerPagePossibilities: rowsPerPagePossibilities rowsToShow: rowsToShow [
	^ (self rowsPerPagePossibilities: rowsPerPagePossibilities)
		rowsPerPage: rowsToShow;
		yourself
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> ajaxOnCompleteHook [
	^ ajaxOnCompleteHook ifNil: [ 'componentHandler.upgradeDom();' ]
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> ajaxOnCompleteHook: anObject [
	ajaxOnCompleteHook := anObject
]

{ #category : #'private - script generation' }
MDLDisplayPaginatedTableContent >> ajaxUpdateScriptOn: html [
	^ html jQuery
		script: [ :s | 
			s
				<<
					((html jQuery id: self tableWidget id) parent load
						html: [ :ajaxHtml | ajaxHtml render: self tableWidget ];
						onComplete: self ajaxOnCompleteHook) ]
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> defaultRowsPerPagePossibilities [
	"Possibilities provided to the user for the #rowsPerPage value."
	^ #(5 10 50)
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> indexOfLastRowToShow [
	^ (self position + self rowsPerPage - 1) min: self totalNumberOfRows
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> initialPosition [
	"The first position that set when I am initialized."
	^ 1
]

{ #category : #initialization }
MDLDisplayPaginatedTableContent >> initialize [
	super initialize.
	self position: self initialPosition.
	self rowsPerPagePossibilities: self defaultRowsPerPagePossibilities
]

{ #category : #testing }
MDLDisplayPaginatedTableContent >> isAtEnd [
	^ self position + self rowsPerPage > self tableWidget collection size
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> minimalPosition [
	"The minimal position that the strategy can reach."
	^ 1
]

{ #category : #actions }
MDLDisplayPaginatedTableContent >> nextPosition [
	self isAtEnd
		ifFalse: [ self position: self position + self rowsPerPage ]
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> position [
	^ position
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> position: anObject [
	position := anObject
]

{ #category : #actions }
MDLDisplayPaginatedTableContent >> previousPosition [
	self position: (self position - self rowsPerPage max: self minimalPosition)
]

{ #category : #'private - rendering' }
MDLDisplayPaginatedTableContent >> renderButtonTriggering: aValuable withIcon: aSymbol disabled: isDisabled on: html [
	html mdlButton
		bePush;
		colored;
		disabled: isDisabled;
		onClick: [ html jQuery ajax
				callback: [ aValuable value: self ];
				onSuccess: (self ajaxUpdateScriptOn: html) ]
			if: isDisabled not;
		icon: aSymbol
]

{ #category : #rendering }
MDLDisplayPaginatedTableContent >> renderContentOn: html [
	html tableBody
		class: 'mdl-table-widget__body';
		with: [ 
			self rowsToDisplayDo: [ :row | 
				html tableRow: [ 
					self tableWidget columnDescriptions do: [ :columnDescription |
						columnDescription render: row on: html ] ] ] ]
]

{ #category : #rendering }
MDLDisplayPaginatedTableContent >> renderFooterOn: html [
	html mdlCardTextContainer
		class: 'mdl-table-widget__footer';
		with: [ 
					html div
						mdlTypographyTextRight;
						with: [ 
									html text: 'Rows per page: '.
									self renderItemsByPageSelectionComponentOn: html.
									self renderPagesInfoOn: html.
									self
										renderButtonTriggering: #previousPosition
										withIcon: #keyboard_arrow_left
										disabled: position = 1
										on: html.
									self
										renderButtonTriggering: #nextPosition
										withIcon: #keyboard_arrow_right
										disabled: self isAtEnd
										on: html ] ]
]

{ #category : #'private - rendering' }
MDLDisplayPaginatedTableContent >> renderItemsByPageSelectionComponentOn: html [
	html
		render:
			(MDLSelectWidget new
				labelBlock: #asString;
				possibilities: self rowsPerPagePossibilities;
				callback: [ :o | self rowsPerPage: o ]; "#rowsToShow was #elementToShow in MDLSortableTable"
				selectedObject: self rowsPerPage;
				sortBlock: #yourself ascending;
				customizationBlock: [ :textField :renderer | 
					textField onChange: (html jQuery ajax serializeThis onComplete: (self ajaxUpdateScriptOn: html)) ];
				yourself)
]

{ #category : #'private - rendering' }
MDLDisplayPaginatedTableContent >> renderPagesInfoOn: html [
	html
		text:
			(String
				streamContents: [ :s | 
					s
						print: position;
						nextPutAll: ' - ';
						print: self indexOfLastRowToShow;
						nextPutAll: ' of ';
						print: self totalNumberOfRows ])
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> rowsPerPage [
	^ rowsToShow ifNil: [ rowsToShow := self rowsPerPagePossibilities first ]
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> rowsPerPage: anObject [
	rowsToShow := anObject
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> rowsPerPagePossibilities [
	^ rowsPerPagePossibilities
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> rowsPerPagePossibilities: anObject [
	rowsPerPagePossibilities := anObject
]

{ #category : #enumerating }
MDLDisplayPaginatedTableContent >> rowsToDisplayDo: aBlock [
	self tableWidget collection
		from: self position
		to: self indexOfLastRowToShow
		do: aBlock
]

{ #category : #accessing }
MDLDisplayPaginatedTableContent >> totalNumberOfRows [
	^ self tableWidget collection size
]
