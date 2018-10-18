Class {
	#name : #MDLMiniFooterSocialButtonTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMiniFooterSocialButtonTest >> testBareBrush [
	self assert: [ :html | html mdlMiniFooterSocialButton ] generates: '<button class="mdl-mini-footer__social-btn" type="submit"></button>'
]

{ #category : #tests }
MDLMiniFooterSocialButtonTest >> testWithContent [
	self assert: [ :html | html mdlMiniFooterSocialButton: 'Test' ] generates: '<button class="mdl-mini-footer__social-btn" type="submit">Test</button>'
]
