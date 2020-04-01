"
I am table widget which aims to provide a high-level API to generate MDL tables.

I work by providing myself a #collection which just needs to be iterable (i.e. understand #do:) and a list of column descriptions.

I provide a nice API to add colum descriptions (see my 'adding' protocol).
"
Class {
	#name : #MDLTableWidget,
	#superclass : #WAComponent,
	#instVars : [
		'columnDescriptions',
		'collection',
		'contentDisplayStrategy',
		'id'
	],
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #adding }
MDLTableWidget >> addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock [
	self addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: nil
]

{ #category : #adding }
MDLTableWidget >> addAjaxButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: tooltip [
	self addColumn: (MDLAjaxButtonColumnDescription new
							title: aString;
							iconName: iconName;
							onClickBlock: onClickBlock;
							tooltip: tooltip;
							yourself)
]

{ #category : #adding }
MDLTableWidget >> addAjaxButtonColumnWithIconName: iconName onClick: onClickBlock tooltip: tooltip [
	self addAjaxButtonColumnNamed: '' iconName: iconName onClick: onClickBlock tooltip: tooltip
]

{ #category : #adding }
MDLTableWidget >> addButtonColumnNamed: aString iconName: iconName onClick: onClickBlock tooltip: tooltip [
	self addColumn: (MDLButtonColumnDescription new
							title: aString;
							iconName: iconName;
							onClickBlock: onClickBlock;
							tooltip: tooltip;
							yourself)
]

{ #category : #adding }
MDLTableWidget >> addButtonColumnWithIconName: iconName onClick: onClickBlock tooltip: tooltip [
	self addButtonColumnNamed: '' iconName: iconName onClick: onClickBlock tooltip: tooltip
]

{ #category : #adding }
MDLTableWidget >> addColumn: aColumnDescription [
	columnDescriptions add: aColumnDescription
]

{ #category : #adding }
MDLTableWidget >> addNumericColumnNamed: aString evaluated: aBlock [
	self addColumn: (MDLNumericColumnDescription new
							title: aString;
							evaluation: aBlock;
							yourself)
]

{ #category : #adding }
MDLTableWidget >> addStringColumnNamed: aString evaluated: aBlock [
	self addColumn: (MDLStringColumnDescription new
							title: aString;
							evaluation: aBlock;
							yourself)
]

{ #category : #accessing }
MDLTableWidget >> collection [
	^ collection value
]

{ #category : #accessing }
MDLTableWidget >> collection: anObject [
	collection := anObject
]

{ #category : #accessing }
MDLTableWidget >> columnDescriptions [
	^ columnDescriptions
]

{ #category : #accessing }
MDLTableWidget >> contentDisplayStrategy [
	^ contentDisplayStrategy
]

{ #category : #accessing }
MDLTableWidget >> contentDisplayStrategy: anObject [
	contentDisplayStrategy := anObject.
	contentDisplayStrategy tableWidget: self
]

{ #category : #configuring }
MDLTableWidget >> displayFullTableContent [
	self contentDisplayStrategy: MDLDisplayFullTableContent new
]

{ #category : #configuring }
MDLTableWidget >> displayPaginatedTableContentWithRowsPerPagePossibilities: rowsPerPagePossibilities [
	self contentDisplayStrategy: (MDLDisplayPaginatedTableContent rowsPerPagePossibilities: rowsPerPagePossibilities)
]

{ #category : #configuring }
MDLTableWidget >> displayPaginatedTableContentWithRowsPerPagePossibilities: rowsPerPagePossibilities currentRowsPerPage: currentRowsPerPage [
	self contentDisplayStrategy: (MDLDisplayPaginatedTableContent rowsPerPagePossibilities: rowsPerPagePossibilities rowsToShow: currentRowsPerPage)
]

{ #category : #accessing }
MDLTableWidget >> id [
	^ id
]

{ #category : #initialization }
MDLTableWidget >> initialize [
	super initialize.
	self displayFullTableContent.
	columnDescriptions := OrderedCollection new.
	collection := #()
]

{ #category : #rendering }
MDLTableWidget >> renderContentOn: html [
	html mdlCard
		shadow: 2;
		style: 'width: 100%; overflow: initial;';
		"class: self tableStyle if: self tableStyle isNotNil;" "TODO, see issue #302"
		id: (id := html nextId);
		with: [ 
			html mdlTable
				style: 'width: 100%; overflow: initial;';
				class: 'mdl-table-widget';
				with: [ 
					self renderTableHeadOn: html.
					self contentDisplayStrategy
						renderContentOn: html ].
		self contentDisplayStrategy
			renderFooterOn: html ]
]

{ #category : #rendering }
MDLTableWidget >> renderTableHeadOn: html [
	html tableHead
		class: 'mdl-table-widget__head';
		with: [ 
		html tableRow: [ 
			self columnDescriptions do: [ :column |
				column renderHeadingOn: html ] ] ]
]
