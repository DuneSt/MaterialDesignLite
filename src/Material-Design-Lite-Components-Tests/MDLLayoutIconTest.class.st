Class {
	#name : #MDLLayoutIconTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutIconTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutIcon ] generates: '<div class="mdl-layout-icon"></div>'
]

{ #category : #tests }
MDLLayoutIconTest >> testWithContent [
	self assert: [ :html | html mdlLayoutIcon: 'test' ] generates: '<div class="mdl-layout-icon">test</div>'
]
