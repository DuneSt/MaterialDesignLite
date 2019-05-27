Class {
	#name : #MDLMiniFooterLinkListTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMiniFooterLinkListTest >> testBareBrush [
	self assert: [ :html | html mdlMiniFooterLinkList ] generates: '<ul class="mdl-mini-footer__link-list"></ul>'
]

{ #category : #tests }
MDLMiniFooterLinkListTest >> testWithContent [
	self assert: [ :html | html mdlMiniFooterLinkList: 'Test' ] generates: '<ul class="mdl-mini-footer__link-list">Test</ul>'
]
