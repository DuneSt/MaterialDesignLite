Class {
	#name : #MDLMegaFooterMiddleSectionTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterMiddleSectionTest >> testBareBrush [
	self assert: [ :html | html mdlFooterMiddleSection ] generates: '<div class="mdl-mega-footer__middle-section"></div>'
]

{ #category : #tests }
MDLMegaFooterMiddleSectionTest >> testWithContent [
	self assert: [ :html | html mdlFooterMiddleSection: 'Test' ] generates: '<div class="mdl-mega-footer__middle-section">Test</div>'
]
