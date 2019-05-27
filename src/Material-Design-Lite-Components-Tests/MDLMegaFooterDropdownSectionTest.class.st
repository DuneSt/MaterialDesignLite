Class {
	#name : #MDLMegaFooterDropdownSectionTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterDropdownSectionTest >> testBareBrush [
	self assert: [ :html | html mdlFooterDropdownSection ] generates: '<div class="mdl-mega-footer__drop-down-section"></div>'
]

{ #category : #tests }
MDLMegaFooterDropdownSectionTest >> testWithContent [
	self assert: [ :html | html mdlFooterDropdownSection: 'Test' ] generates: '<div class="mdl-mega-footer__drop-down-section">Test</div>'
]
