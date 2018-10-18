Class {
	#name : #MDLListItemTextBodyTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListItemTextBodyTest >> testBareBrush [
	self assert: [ :html | html mdlListItemTextBody ] generates: '<span class="mdl-list__item-text-body"></span>'
]

{ #category : #tests }
MDLListItemTextBodyTest >> testWithContent [
	self assert: [ :html | html mdlListItemTextBody: 'test' ] generates: '<span class="mdl-list__item-text-body">test</span>'
]
