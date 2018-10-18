Class {
	#name : #MDLLayoutTabTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutTabTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutTab ] generates: '<a class="mdl-layout__tab"></a>'
]

{ #category : #tests }
MDLLayoutTabTest >> testIsActive [
	self assert: [ :html | html mdlLayoutTab isActive ] generates: '<a class="mdl-layout__tab is-active"></a>'
]

{ #category : #tests }
MDLLayoutTabTest >> testIsActiveIf [
	self assert: [ :html | html mdlLayoutTab isActiveIf: true ] generates: '<a class="mdl-layout__tab is-active"></a>'.
	self assert: [ :html | html mdlLayoutTab isActiveIf: false ] generates: '<a class="mdl-layout__tab"></a>'
]

{ #category : #tests }
MDLLayoutTabTest >> testWithContent [
	self assert: [ :html | html mdlLayoutTab: 'test' ] generates: '<a class="mdl-layout__tab">test</a>'
]
