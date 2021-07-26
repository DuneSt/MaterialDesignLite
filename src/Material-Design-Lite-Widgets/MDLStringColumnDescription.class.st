"
I model a string column.

My values are of kind string. Because of that, I align the title of the column on the left side.
"
Class {
	#name : #MDLStringColumnDescription,
	#superclass : #MDLTableColumnDescription,
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #rendering }
MDLStringColumnDescription >> render: row on: html [
	html mdlTableCell
		id: (self generateIdUsing: html);
		class: 'mdl-table-widget__cell--string';
		nonNumerical;
		with: (self evaluation value: row)
]

{ #category : #rendering }
MDLStringColumnDescription >> renderHeadingOn: html [
	(super renderHeadingOn: html)
		class: 'mdl-table-widget__cell--string';
		nonNumerical;
		with: self title.
]
