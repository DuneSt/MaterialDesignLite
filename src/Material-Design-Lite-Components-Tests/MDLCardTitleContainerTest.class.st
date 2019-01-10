Class {
	#name : #MDLCardTitleContainerTest,
	#superclass : #MDLCardInnerDivTest,
	#category : 'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardTitleContainerTest >> testBareBrush [
	self
		assert: [ :html | html mdlCardTitleContainer ]
		generates: '<div class="mdl-card__title"></div>'
]

{ #category : #tests }
MDLCardTitleContainerTest >> testBorder [
	self
		assert: [ :html | html mdlCardTitleContainer border ]
		generates: '<div class="mdl-card__title mdl-card--border"></div>'
]

{ #category : #tests }
MDLCardTitleContainerTest >> testExpand [
	self
		assert: [ :html | html mdlCardTitleContainer expand ]
		generates: '<div class="mdl-card__title mdl-card--expand"></div>'
]

{ #category : #tests }
MDLCardTitleContainerTest >> testWithContent [
	self
		assert: [ :html | html mdlCardTitleContainer: [ html mdlCardTitleText: 'test' ] ]
		generates:
			'<div class="mdl-card__title"><h1 class="mdl-card__title-text">test</h1></div>'
]
