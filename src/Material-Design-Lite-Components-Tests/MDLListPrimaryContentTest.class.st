Class {
	#name : #MDLListPrimaryContentTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListPrimaryContentTest >> testBareBrush [
	self assert: [ :html | html mdlListPrimaryContent ] generates: '<span class="mdl-list__item-primary-content"></span>'
]

{ #category : #tests }
MDLListPrimaryContentTest >> testWithContent [
	self assert: [ :html | html mdlListPrimaryContent: 'test' ] generates: '<span class="mdl-list__item-primary-content">test</span>'
]
