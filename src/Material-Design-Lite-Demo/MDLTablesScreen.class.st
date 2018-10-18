"
I'm representing the tables.
"
Class {
	#name : #MDLTablesScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLTablesScreen class >> description [
	^ 'Organize data.'
]

{ #category : #accessing }
MDLTablesScreen class >> icon [
	^ 'comptablesPng'
]

{ #category : #accessing }
MDLTablesScreen class >> title [
	^ 'Tables'
]

{ #category : #sections }
MDLTablesScreen >> dataTable [
	^ OrderedDictionary new
		add: 'Data table' -> #renderDataTableOn:;
		yourself
]

{ #category : #demos }
MDLTablesScreen >> renderDataTableOn: html [
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
]

{ #category : #rendering }
MDLTablesScreen >> renderScreenContentOn: html [
	self render: self dataTable on: html
]
