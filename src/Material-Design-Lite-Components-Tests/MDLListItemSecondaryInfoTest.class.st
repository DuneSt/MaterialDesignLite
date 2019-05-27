Class {
	#name : #MDLListItemSecondaryInfoTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListItemSecondaryInfoTest >> testBareBrush [
	self assert: [ :html | html mdlListItemSecondaryInfo ] generates: '<span class="mdl-list__item-secondary-info"></span>'
]

{ #category : #tests }
MDLListItemSecondaryInfoTest >> testWithContent [
	self assert: [ :html | html mdlListItemSecondaryInfo: 'test' ] generates: '<span class="mdl-list__item-secondary-info">test</span>'
]
