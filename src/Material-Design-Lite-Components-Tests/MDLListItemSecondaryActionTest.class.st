Class {
	#name : #MDLListItemSecondaryActionTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListItemSecondaryActionTest >> testBareBrush [
	self assert: [ :html | html mdlListItemSecondaryAction ] generates: '<a class="mdl-list__item-secondary-action"></a>'
]

{ #category : #tests }
MDLListItemSecondaryActionTest >> testWithContent [
	self assert: [ :html | html mdlListItemSecondaryAction: 'test' ] generates: '<a class="mdl-list__item-secondary-action">test</a>'
]
