Class {
	#name : #MDLLayoutSpacerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutSpacerTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutSpacer ] generates: '<div class="mdl-layout-spacer"></div>'
]

{ #category : #tests }
MDLLayoutSpacerTest >> testWithContent [
	self assert: [ :html | html mdlLayoutSpacer: 'test' ] generates: '<div class="mdl-layout-spacer">test</div>'
]
