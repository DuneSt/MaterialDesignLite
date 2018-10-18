Class {
	#name : #MDLChipImageTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Chips'
}

{ #category : #tests }
MDLChipImageTest >> testAltText [
	self assert: [ :html | html mdlChipImage altText: 'A message' ] generatedIncludes: '<img alt="A message" class="mdl-chip__contact" id="id1"/>'
]

{ #category : #tests }
MDLChipImageTest >> testBareBrush [
	self assert: [ :html | html mdlChipImage ] generatedIncludes: '<img alt="" class="mdl-chip__contact" id="id1"/>'
]

{ #category : #tests }
MDLChipImageTest >> testUrl [
	self assert: [ :html | html mdlChipImage url: 'https://test.com/image.png' ] generatedIncludes: '<img alt="" src="https://test.com/image.png" class="mdl-chip__contact" id="id1"/>'
]

{ #category : #tests }
MDLChipImageTest >> testWithContent [
	"Should not implement it."
]
