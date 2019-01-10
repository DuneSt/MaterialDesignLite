Class {
	#name : #MDLTableTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Tables'
}

{ #category : #tests }
MDLTableTest >> testBareBrush [
	self assert: [ :html | html mdlTable ] generates: '<table class="mdl-data-table mdl-js-data-table"></table>'
]

{ #category : #tests }
MDLTableTest >> testSelectable [
	self assert: [ :html | html mdlTable selectable ] generates: '<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable"></table>'
]

{ #category : #tests }
MDLTableTest >> testWithContent [
	self assert: [ :html | html mdlTable: 'test' ] generates: '<table class="mdl-data-table mdl-js-data-table">test</table>'
]
