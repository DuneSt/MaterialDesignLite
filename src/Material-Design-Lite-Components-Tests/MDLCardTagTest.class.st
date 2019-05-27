Class {
	#name : #MDLCardTagTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardTagTest >> testBareBrush [
	self assert: [ :html | html mdlCard ] generates: '<div class="mdl-card"></div>'
]

{ #category : #tests }
MDLCardTagTest >> testWithContent [
	self assert: [ :html | html mdlCard: 'test' ] generates: '<div class="mdl-card">test</div>'
]
