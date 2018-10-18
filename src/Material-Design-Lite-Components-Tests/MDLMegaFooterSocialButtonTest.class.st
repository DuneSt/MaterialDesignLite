Class {
	#name : #MDLMegaFooterSocialButtonTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterSocialButtonTest >> testBareBrush [
	self assert: [ :html | html mdlFooterSocialButton ] generates: '<button class="mdl-mega-footer__social-btn" type="submit"></button>'
]

{ #category : #tests }
MDLMegaFooterSocialButtonTest >> testWithContent [
	self assert: [ :html | html mdlFooterSocialButton: 'Test' ] generates: '<button class="mdl-mega-footer__social-btn" type="submit">Test</button>'
]
