Class {
	#name : #MDLTableCellTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Tables'
}

{ #category : #tests }
MDLTableCellTest >> testBareBrush [
	self assert: [ :html | html mdlTableCell ] generates: '<td></td>'
]

{ #category : #tests }
MDLTableCellTest >> testNonNumerical [
	self assert: [ :html | html mdlTableCell nonNumerical ] generates: '<td class="mdl-data-table__cell--non-numeric"></td>'
]

{ #category : #tests }
MDLTableCellTest >> testWithContent [
	self assert: [ :html | html mdlTableCell: 'test' ] generates: '<td>test</td>'
]
