Class {
	#name : #MDLCardMenuTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardMenuTest >> testBareBrush [
	self assert: [ :html | html mdlCardMenu ] generates: '<div class="mdl-card__menu"></div>'
]

{ #category : #tests }
MDLCardMenuTest >> testWithContent [
	self assert: [ :html | html mdlCardMenu: 'content' ] generates: '<div class="mdl-card__menu">content</div>'
]
