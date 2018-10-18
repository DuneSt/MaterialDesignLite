Class {
	#name : #MDLTableCellTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Tables'
}

{ #category : #tests }
MDLTableCellTest >> testBareBrush [
	self assert: [ :html | html mdlTableCell ] generates: '<td class="mdl-data-table__cell--non-numeric"></td>'
]

{ #category : #tests }
MDLTableCellTest >> testWithContent [
	self assert: [ :html | html mdlTableCell: 'test' ] generates: '<td class="mdl-data-table__cell--non-numeric">test</td>'
]
