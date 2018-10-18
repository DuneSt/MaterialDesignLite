Class {
	#name : #MDLCardTextContainerTest,
	#superclass : #MDLCardInnerDivTest,
	#category : 'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardTextContainerTest >> testBareBrush [
	self assert: [ :html | html mdlCardTextContainer ] generates: '<div class="mdl-card__supporting-text"></div>'
]

{ #category : #tests }
MDLCardTextContainerTest >> testBorder [
	self assert: [ :html | html mdlCardTextContainer border ] generates: '<div class="mdl-card__supporting-text mdl-card--border"></div>'
]

{ #category : #tests }
MDLCardTextContainerTest >> testExpand [
	self assert: [ :html | html mdlCardTextContainer expand ] generates: '<div class="mdl-card__supporting-text mdl-card--expand"></div>'
]

{ #category : #tests }
MDLCardTextContainerTest >> testWithContent [
	self assert: [ :html | html mdlCardTextContainer: 'test' ] generates: '<div class="mdl-card__supporting-text">test</div>'
]
