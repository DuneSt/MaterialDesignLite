Class {
	#name : #MDLLayoutHeaderRowTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutHeaderRowTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutHeaderRow ] generates: '<div class="mdl-layout__header-row"></div>'
]

{ #category : #tests }
MDLLayoutHeaderRowTest >> testWithContent [
	self assert: [ :html | html mdlLayoutHeaderRow: 'test' ] generates: '<div class="mdl-layout__header-row">test</div>'
]
