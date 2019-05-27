Class {
	#name : #MDLGridTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLGridTest >> testBareBrush [
	self assert: [ :html | html mdlGrid ] generates: '<div class="mdl-grid"></div>'
]

{ #category : #tests }
MDLGridTest >> testNoSpacing [
	self
		assert: [ :html | 
			html mdlGrid
				noSpacing;
				with: 'test' ]
		generates: '<div class="mdl-grid mdl-grid--no-spacing">test</div>'
]

{ #category : #tests }
MDLGridTest >> testWithContent [
	self assert: [ :html | html mdlGrid: 'test' ] generates: '<div class="mdl-grid">test</div>'
]
