Class {
	#name : #MDLSortableTableHeader,
	#superclass : #Object,
	#instVars : [
		'currentState',
		'unsortedState',
		'cells'
	],
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #'instance creation' }
MDLSortableTableHeader class >> for: element [
	^ self new cells: element
]

{ #category : #converting }
MDLSortableTableHeader >> asMDLSortableTableHeader [
	^ self
]

{ #category : #accessing }
MDLSortableTableHeader >> cells [
	^ cells
]

{ #category : #accessing }
MDLSortableTableHeader >> cells: aCollection [
	cells := aCollection
]

{ #category : #accessing }
MDLSortableTableHeader >> currentState [
	^ currentState
		ifNil: [ self unsort.
			currentState ]
]

{ #category : #accessing }
MDLSortableTableHeader >> currentState: anObject [
	currentState := anObject
]

{ #category : #accessing }
MDLSortableTableHeader >> element [
	self deprecated: 'Uses #cells instead' transformWith: '`@receiver element' -> '`@receiver cells'.
	^ self cells
]

{ #category : #accessing }
MDLSortableTableHeader >> element: aCollection [
	self deprecated: 'Uses #cells: instead' transformWith: '`@receiver element: `@statements1' -> '`@receiver cells: `@statements1'.
	^ self cells: aCollection
]

{ #category : #'state handling' }
MDLSortableTableHeader >> goToNextState [
	self currentState: self currentState nextState
]

{ #category : #rendering }
MDLSortableTableHeader >> headingCellOn: html [
	^ html mdlTableHeading
		style: 'cursor: pointer;';
		yourself
]

{ #category : #initialization }
MDLSortableTableHeader >> initialize [
	super initialize.
	unsortedState := MDLSortableTableHeaderElementUnsorted new
]

{ #category : #rendering }
MDLSortableTableHeader >> renderContentOn: aRenderer forTable: table columnIndex: i [
	self currentState 
		renderContentOn: aRenderer 
		forTable: table 
		columnIndex: i 
		header: self
]

{ #category : #rendering }
MDLSortableTableHeader >> tableCellOn: html [
	^ html mdlTableCell
]

{ #category : #sorting }
MDLSortableTableHeader >> unsort [
	self currentState: self unsortedState
]

{ #category : #accessing }
MDLSortableTableHeader >> unsortedState [
	^ unsortedState
]

{ #category : #accessing }
MDLSortableTableHeader >> unsortedState: anObject [
	unsortedState := anObject
]
