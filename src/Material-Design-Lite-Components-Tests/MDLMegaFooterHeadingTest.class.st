Class {
	#name : #MDLMegaFooterHeadingTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Footer'
}

{ #category : #tests }
MDLMegaFooterHeadingTest >> testBareBrush [
	self assert: [ :html | html mdlFooterHeading ] generates: '<h1 class="mdl-mega-footer__heading"></h1>'
]

{ #category : #tests }
MDLMegaFooterHeadingTest >> testLevel1 [
	self
		assert: [ :html | 
			html mdlFooterHeading
				level1;
				with: 'title' ]
		generates: '<h1 class="mdl-mega-footer__heading">title</h1>'
]

{ #category : #tests }
MDLMegaFooterHeadingTest >> testLevel2 [
	self
		assert: [ :html | 
			html mdlFooterHeading
				level2;
				with: 'title' ]
		generates: '<h2 class="mdl-mega-footer__heading">title</h2>'
]

{ #category : #tests }
MDLMegaFooterHeadingTest >> testLevel3 [
	self
		assert: [ :html | 
			html mdlFooterHeading
				level3;
				with: 'title' ]
		generates: '<h3 class="mdl-mega-footer__heading">title</h3>'
]

{ #category : #tests }
MDLMegaFooterHeadingTest >> testLevel4 [
	self
		assert: [ :html | 
			html mdlFooterHeading
				level4;
				with: 'title' ]
		generates: '<h4 class="mdl-mega-footer__heading">title</h4>'
]

{ #category : #tests }
MDLMegaFooterHeadingTest >> testLevel5 [
	self
		assert: [ :html | 
			html mdlFooterHeading
				level5;
				with: 'title' ]
		generates: '<h5 class="mdl-mega-footer__heading">title</h5>'
]

{ #category : #tests }
MDLMegaFooterHeadingTest >> testLevel6 [
	self
		assert: [ :html | 
			html mdlFooterHeading
				level6;
				with: 'title' ]
		generates: '<h6 class="mdl-mega-footer__heading">title</h6>'
]

{ #category : #tests }
MDLMegaFooterHeadingTest >> testWithContent [
	self assert: [ :html | html mdlFooterHeading: 'title' ] generates: '<h1 class="mdl-mega-footer__heading">title</h1>'
]
