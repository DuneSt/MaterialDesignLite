Class {
	#name : #MDLListItemTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListItemTest >> testBareBrush [
	self assert: [ :html | html mdlListItem ] generates: '<li class="mdl-list__item"></li>'
]

{ #category : #tests }
MDLListItemTest >> testThreeLine [
	self assert: [ :html | html mdlListItem threeLine ] generates: '<li class="mdl-list__item mdl-list__item--three-line"></li>'
]

{ #category : #tests }
MDLListItemTest >> testTwoLine [
	self assert: [ :html | html mdlListItem twoLine ] generates: '<li class="mdl-list__item mdl-list__item--two-line"></li>'
]

{ #category : #tests }
MDLListItemTest >> testWithContent [
	self assert: [ :html | html mdlListItem: 'test' ] generates: '<li class="mdl-list__item">test</li>'
]
