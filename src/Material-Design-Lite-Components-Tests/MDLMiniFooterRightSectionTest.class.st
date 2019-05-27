Class {
	#name : #MDLMiniFooterRightSectionTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMiniFooterRightSectionTest >> testBareBrush [
	self assert: [ :html | html mdlMiniFooterRightSection ] generates: '<div class="mdl-mini-footer__right-section"></div>'
]

{ #category : #tests }
MDLMiniFooterRightSectionTest >> testWithContent [
	self assert: [ :html | html mdlMiniFooterRightSection: 'Test' ] generates: '<div class="mdl-mini-footer__right-section">Test</div>'
]
