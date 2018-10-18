Class {
	#name : #MDLListTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListTest >> testBareBrush [
	self assert: [ :html | html mdlList ] generates: '<ul class="mdl-list"></ul>'
]

{ #category : #tests }
MDLListTest >> testWithContent [
	self assert: [ :html | html mdlList: 'test' ] generates: '<ul class="mdl-list">test</ul>'
]
