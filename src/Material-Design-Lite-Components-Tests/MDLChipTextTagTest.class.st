Class {
	#name : #MDLChipTextTagTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Chips'
}

{ #category : #tests }
MDLChipTextTagTest >> testBareBrush [
	self assert: [ :html | html mdlChipText ] generates: '<span class="mdl-chip__text"></span>'
]

{ #category : #tests }
MDLChipTextTagTest >> testWithContent [
	self assert: [ :html | html mdlChipText: 'Example' ] generates: '<span class="mdl-chip__text">Example</span>'
]
