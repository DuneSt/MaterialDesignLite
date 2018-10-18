Class {
	#name : #MDLMiniFooterTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMiniFooterTest >> testBareBrush [
	self assert: [ :html | html mdlMiniFooter ] generates: '<footer class="mdl-mini-footer"></footer>'
]

{ #category : #tests }
MDLMiniFooterTest >> testWithContent [
	self assert: [ :html | html mdlMiniFooter: 'Test' ] generates: '<footer class="mdl-mini-footer">Test</footer>'
]
