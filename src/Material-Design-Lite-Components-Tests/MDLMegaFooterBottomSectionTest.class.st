Class {
	#name : #MDLMegaFooterBottomSectionTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterBottomSectionTest >> testBareBrush [
	self assert: [ :html | html mdlFooterBottomSection ] generates: '<div class="mdl-mega-footer__bottom-section"></div>'
]

{ #category : #tests }
MDLMegaFooterBottomSectionTest >> testWithContent [
	self assert: [ :html | html mdlFooterBottomSection: 'Test' ] generates: '<div class="mdl-mega-footer__bottom-section">Test</div>'
]
