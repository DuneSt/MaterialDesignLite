Class {
	#name : #MDLLogoTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLLogoTest >> testBareBrush [
	self assert: [ :html | html mdlLogo ] generates: '<div class="mdl-logo"></div>'
]

{ #category : #tests }
MDLLogoTest >> testWithContent [
	self assert: [ :html | html mdlLogo: 'Logo' ] generates: '<div class="mdl-logo">Logo</div>'
]
