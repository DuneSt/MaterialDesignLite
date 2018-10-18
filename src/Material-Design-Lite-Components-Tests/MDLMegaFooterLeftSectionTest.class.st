Class {
	#name : #MDLMegaFooterLeftSectionTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterLeftSectionTest >> testBareBrush [
	self assert: [ :html | html mdlFooterLeftSection ] generates: '<div class="mdl-mega-footer__left-section"></div>'
]

{ #category : #tests }
MDLMegaFooterLeftSectionTest >> testWithContent [
	self assert: [ :html | html mdlFooterLeftSection: 'Test' ] generates: '<div class="mdl-mega-footer__left-section">Test</div>'
]
