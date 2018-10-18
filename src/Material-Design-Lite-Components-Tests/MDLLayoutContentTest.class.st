Class {
	#name : #MDLLayoutContentTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutContentTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutContent ] generates: '<main class="mdl-layout__content"></main>'
]

{ #category : #tests }
MDLLayoutContentTest >> testWithContent [
	self assert: [ :html | html mdlLayoutContent: 'test' ] generates: '<main class="mdl-layout__content">test</main>'
]
