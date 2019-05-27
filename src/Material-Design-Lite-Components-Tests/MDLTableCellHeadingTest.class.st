Class {
	#name : #MDLTableCellHeadingTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Tables'
}

{ #category : #tests }
MDLTableCellHeadingTest >> testBareBrush [
	self assert: [ :html | html mdlTableHeading ] generates: '<th></th>'
]

{ #category : #tests }
MDLTableCellHeadingTest >> testNonNumerical [
	self assert: [ :html | html mdlTableHeading nonNumerical ] generates: '<th class="mdl-data-table__cell--non-numeric"></th>'
]

{ #category : #tests }
MDLTableCellHeadingTest >> testWithContent [
	self assert: [ :html | html mdlTableHeading: 'test' ] generates: '<th>test</th>'
]
