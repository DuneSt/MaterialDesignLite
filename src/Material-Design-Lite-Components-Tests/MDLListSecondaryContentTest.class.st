Class {
	#name : #MDLListSecondaryContentTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-List'
}

{ #category : #tests }
MDLListSecondaryContentTest >> testBareBrush [
	self assert: [ :html | html mdlListSecondaryContent ] generates: '<span class="mdl-list__item-secondary-content"></span>'
]

{ #category : #tests }
MDLListSecondaryContentTest >> testWithContent [
	self assert: [ :html | html mdlListSecondaryContent: 'test' ] generates: '<span class="mdl-list__item-secondary-content">test</span>'
]
