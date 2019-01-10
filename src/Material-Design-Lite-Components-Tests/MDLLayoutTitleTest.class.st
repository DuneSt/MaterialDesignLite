Class {
	#name : #MDLLayoutTitleTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutTitleTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutTitle ] generates: '<span class="mdl-layout-title"></span>'
]

{ #category : #tests }
MDLLayoutTitleTest >> testWithContent [
	self assert: [ :html | html mdlLayoutTitle: 'test' ] generates: '<span class="mdl-layout-title">test</span>'
]
