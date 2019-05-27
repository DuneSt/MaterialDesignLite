Class {
	#name : #MDLMegaFooterLinkListTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterLinkListTest >> testBareBrush [
	self assert: [ :html | html mdlFooterLinkList ] generates: '<ul class="mdl-mega-footer__link-list"></ul>'
]

{ #category : #tests }
MDLMegaFooterLinkListTest >> testWithContent [
	self assert: [ :html | html mdlFooterLinkList: 'Test' ] generates: '<ul class="mdl-mega-footer__link-list">Test</ul>'
]
