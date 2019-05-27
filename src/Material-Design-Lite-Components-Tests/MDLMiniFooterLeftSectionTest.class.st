Class {
	#name : #MDLMiniFooterLeftSectionTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMiniFooterLeftSectionTest >> testBareBrush [
	self assert: [ :html | html mdlMiniFooterLeftSection ] generates: '<div class="mdl-mini-footer__left-section"></div>'
]

{ #category : #tests }
MDLMiniFooterLeftSectionTest >> testWithContent [
	self assert: [ :html | html mdlMiniFooterLeftSection: 'Test' ] generates: '<div class="mdl-mini-footer__left-section">Test</div>'
]
