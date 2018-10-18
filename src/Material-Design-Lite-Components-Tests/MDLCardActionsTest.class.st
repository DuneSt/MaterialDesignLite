Class {
	#name : #MDLCardActionsTest,
	#superclass : #MDLCardInnerDivTest,
	#category : 'Material-Design-Lite-Components-Tests-Card'
}

{ #category : #tests }
MDLCardActionsTest >> testBareBrush [
	self assert: [ :html | html mdlCardActions ] generates: '<div class="mdl-card__actions"></div>'
]

{ #category : #tests }
MDLCardActionsTest >> testBorder [
	self assert: [ :html | html mdlCardActions border ] generates: '<div class="mdl-card__actions mdl-card--border"></div>'
]

{ #category : #tests }
MDLCardActionsTest >> testExpand [
	self assert: [ :html | html mdlCardActions expand ] generates: '<div class="mdl-card__actions mdl-card--expand"></div>'
]

{ #category : #tests }
MDLCardActionsTest >> testWithContent [
	self assert: [ :html | html mdlCardActions: 'test' ] generates: '<div class="mdl-card__actions">test</div>'
]
