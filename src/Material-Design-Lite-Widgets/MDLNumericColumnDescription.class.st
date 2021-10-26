"
I model a numeric column.

My values are of kind numeric. Because of that, I align the title of the column on the right side.
"
Class {
	#name : #MDLNumericColumnDescription,
	#superclass : #MDLTableColumnDescription,
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLNumericColumnDescription >> render: row on: html [
	html mdlTableCell
		id: (self generateIdUsing: html);
		class: 'mdl-table-widget__cell--numeric';
		with: (self evaluation value: row)
]

{ #category : #rendering }
MDLNumericColumnDescription >> renderHeadingOn: html [
	(super renderHeadingOn: html)
		class: 'mdl-table-widget__cell--numeric';
		with: self title.
]
