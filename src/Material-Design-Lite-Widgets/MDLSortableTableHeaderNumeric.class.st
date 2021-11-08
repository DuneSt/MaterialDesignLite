Class {
	#name : #MDLSortableTableHeaderNumeric,
	#superclass : #MDLSortableTableHeader,
	#category : 'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLSortableTableHeaderNumeric >> headingCellOn: html [
	^ html mdlTableHeading
		style: 'cursor: pointer;';
		yourself
]

{ #category : #rendering }
MDLSortableTableHeaderNumeric >> tableCellOn: html [
	^ html mdlTableCell
]
