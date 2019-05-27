Class {
	#name : #MDLMegaFooterTopSectionTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterTopSectionTest >> testBareBrush [
	self assert: [ :html | html mdlFooterTopSection ] generates: '<div class="mdl-mega-footer__top-section"></div>'
]

{ #category : #tests }
MDLMegaFooterTopSectionTest >> testWithContent [
	self assert: [ :html | html mdlFooterTopSection: 'Test' ] generates: '<div class="mdl-mega-footer__top-section">Test</div>'
]
