Class {
	#name : #MDLNumericColumnDescription,
	#superclass : #MDLTableColumnDescription,
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLNumericColumnDescription >> render: row on: html [
	html mdlTableCell
		id: (self generateIdUsing: html);
		with: (self evaluation value: row)
]

{ #category : #rendering }
MDLNumericColumnDescription >> renderHeadingOn: html [
	(super renderHeadingOn: html)
		with: self title.
]
