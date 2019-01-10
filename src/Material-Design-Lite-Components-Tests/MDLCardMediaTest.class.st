Class {
	#name : #MDLCardMediaTest,
	#superclass : #MDLCardInnerDivTest,
	#category : 'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardMediaTest >> testBareBrush [
	self assert: [ :html | html mdlCardMedia ] generates: '<div class="mdl-card__media"></div>'
]

{ #category : #tests }
MDLCardMediaTest >> testBorder [
	self assert: [ :html | html mdlCardMedia border ] generates: '<div class="mdl-card__media mdl-card--border"></div>'
]

{ #category : #tests }
MDLCardMediaTest >> testExpand [
	self assert: [ :html | html mdlCardMedia expand ] generates: '<div class="mdl-card__media mdl-card--expand"></div>'
]

{ #category : #tests }
MDLCardMediaTest >> testWithContent [
	self assert: [ :html | html mdlCardMedia: 'test' ] generates: '<div class="mdl-card__media">test</div>'
]
