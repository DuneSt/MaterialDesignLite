"
Description
--------------------

I am a brush to create a MDL table.

Example
--------------------

	| datas |
	datas := OrderedDictionary with: 'Acrylic (Transparent)' -> #('25' '$2.90') with: 'Plywood (Birch)' -> #('50' '$1.25') with: 'Laminate (Gold on Blue)' -> #('10' '$2.35').
	html mdlTable
		shadow: 2;
		selectable;
		with: [ html
				tableHead: [ html
						tableRow: [ html mdlTableHeading: 'Material'.
							html tableHeading: 'Quantity'.
							html tableHeading: 'Price' ] ].
			html
				tableBody: [ datas
						keysAndValuesDo: [ :title :members | 
							html
								tableRow: [ html mdlTableCell: title.
									members do: [ :data | html tableData: data ] ] ] ] ]
"
Class {
	#name : #MDLTable,
	#superclass : #WATableTag,
	#category : 'Material-Design-Lite-Components-Tables'
}

{ #category : #initialization }
MDLTable >> initialize [
	super initialize.
	self class: 'mdl-data-table mdl-js-data-table'
]

{ #category : #options }
MDLTable >> selectable [
	self class: 'mdl-data-table--selectable'
]
