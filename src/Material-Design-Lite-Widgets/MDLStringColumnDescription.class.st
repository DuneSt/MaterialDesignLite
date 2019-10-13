Class {
	#name : #MDLStringColumnDescription,
	#superclass : #MDLTableColumnDescription,
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLStringColumnDescription >> render: row on: html [
	html mdlTableCell
		id: (self generateIdUsing: html);
		nonNumerical;
		with: (self evaluation value: row)
]

{ #category : #rendering }
MDLStringColumnDescription >> renderHeadingOn: html [
	(super renderHeadingOn: html)
		nonNumerical;
		with: self title.
]
