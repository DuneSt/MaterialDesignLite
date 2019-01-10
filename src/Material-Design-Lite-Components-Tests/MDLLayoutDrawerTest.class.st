Class {
	#name : #MDLLayoutDrawerTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutDrawerTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutDrawer ] generates: '<div class="mdl-layout__drawer"></div>'
]

{ #category : #tests }
MDLLayoutDrawerTest >> testWithContent [
	self assert: [ :html | html mdlLayoutDrawer: 'test' ] generates: '<div class="mdl-layout__drawer">test</div>'
]
