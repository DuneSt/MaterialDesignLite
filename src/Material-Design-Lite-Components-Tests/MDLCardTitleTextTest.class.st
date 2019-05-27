"
A MDLCardTitleTextTest is a test class for testing the behavior of MDLCardTitleText
"
Class {
	#name : #MDLCardTitleTextTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardTitleTextTest >> testBareBrush [
	self assert: [ :html | html mdlCardTitleText ] generates: '<h1 class="mdl-card__title-text"></h1>'
]

{ #category : #tests }
MDLCardTitleTextTest >> testLevel1 [
	self
		assert: [ :html | 
			html mdlCardTitleText
				level1;
				with: 'title' ]
		generates: '<h1 class="mdl-card__title-text">title</h1>'
]

{ #category : #tests }
MDLCardTitleTextTest >> testLevel2 [
	self
		assert: [ :html | 
			html mdlCardTitleText
				level2;
				with: 'title' ]
		generates: '<h2 class="mdl-card__title-text">title</h2>'
]

{ #category : #tests }
MDLCardTitleTextTest >> testLevel3 [
	self
		assert: [ :html | 
			html mdlCardTitleText
				level3;
				with: 'title' ]
		generates: '<h3 class="mdl-card__title-text">title</h3>'
]

{ #category : #tests }
MDLCardTitleTextTest >> testLevel4 [
	self
		assert: [ :html | 
			html mdlCardTitleText
				level4;
				with: 'title' ]
		generates: '<h4 class="mdl-card__title-text">title</h4>'
]

{ #category : #tests }
MDLCardTitleTextTest >> testLevel5 [
	self
		assert: [ :html | 
			html mdlCardTitleText
				level5;
				with: 'title' ]
		generates: '<h5 class="mdl-card__title-text">title</h5>'
]

{ #category : #tests }
MDLCardTitleTextTest >> testLevel6 [
	self
		assert: [ :html | 
			html mdlCardTitleText
				level6;
				with: 'title' ]
		generates: '<h6 class="mdl-card__title-text">title</h6>'
]

{ #category : #tests }
MDLCardTitleTextTest >> testWithContent [
	self assert: [ :html | html mdlCardTitleText: 'title' ] generates: '<h1 class="mdl-card__title-text">title</h1>'
]
