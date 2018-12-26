Class {
	#name : #MDLMegaFooterHeadingCheckBoxTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterHeadingCheckBoxTest >> testBareBrush [
	self assert: [ :html | html mdlFooterHeadingCheckbox ] generates: '<input class="mdl-mega-footer__heading-checkbox" checked type="checkbox"/>'
]

{ #category : #tests }
MDLMegaFooterHeadingCheckBoxTest >> testWithContent [
	"Not possible to add a content"
]
