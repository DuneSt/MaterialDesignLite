Class {
	#name : #MDLListItemSubtitleTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListItemSubtitleTest >> testBareBrush [
	self assert: [ :html | html mdlListItemSubTitle ] generates: '<span class="mdl-list__item-sub-title"></span>'
]

{ #category : #tests }
MDLListItemSubtitleTest >> testWithContent [
	self assert: [ :html | html mdlListItemSubTitle: 'test' ] generates: '<span class="mdl-list__item-sub-title">test</span>'
]
