Class {
	#name : #MDLMegaFooterRightSectionTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterRightSectionTest >> testBareBrush [
	self assert: [ :html | html mdlFooterRightSection ] generates: '<div class="mdl-mega-footer__right-section"></div>'
]

{ #category : #tests }
MDLMegaFooterRightSectionTest >> testWithContent [
	self assert: [ :html | html mdlFooterRightSection: 'Test' ] generates: '<div class="mdl-mega-footer__right-section">Test</div>'
]
