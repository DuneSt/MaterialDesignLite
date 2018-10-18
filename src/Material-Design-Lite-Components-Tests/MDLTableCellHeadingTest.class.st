Class {
	#name : #MDLTableCellHeadingTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Tables'
}

{ #category : #tests }
MDLTableCellHeadingTest >> testBareBrush [
	self assert: [ :html | html mdlTableHeading ] generates: '<th class="mdl-data-table__cell--non-numeric"></th>'
]

{ #category : #tests }
MDLTableCellHeadingTest >> testWithContent [
	self assert: [ :html | html mdlTableHeading: 'test' ] generates: '<th class="mdl-data-table__cell--non-numeric">test</th>'
]
