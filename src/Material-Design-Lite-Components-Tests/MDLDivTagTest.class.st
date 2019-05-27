Class {
	#name : #MDLDivTagTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Core'
}

{ #category : #tests }
MDLDivTagTest >> testBareBrush [
	self assert: [ :html | html mdlDiv ] generates: '<div></div>'
]

{ #category : #tests }
MDLDivTagTest >> testWithContent [
	self assert: [ :html | html mdlDiv: 'Test' ] generates: '<div>Test</div>'
]
