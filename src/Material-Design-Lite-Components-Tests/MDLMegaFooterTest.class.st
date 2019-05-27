Class {
	#name : #MDLMegaFooterTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterTest >> testBareBrush [
	self assert: [ :html | html mdlFooter ] generates: '<footer class="mdl-mega-footer"></footer>'
]

{ #category : #tests }
MDLMegaFooterTest >> testWithContent [
	self assert: [ :html | html mdlFooter: 'Test' ] generates: '<footer class="mdl-mega-footer">Test</footer>'
]
