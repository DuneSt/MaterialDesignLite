Class {
	#name : #MDLLayoutTabPanelTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutTabPanelTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutTabPanel ] generates: '<div class="mdl-layout__tab-panel"></div>'
]

{ #category : #tests }
MDLLayoutTabPanelTest >> testIsActive [
	self assert: [ :html | html mdlLayoutTabPanel isActive ] generates: '<div class="mdl-layout__tab-panel is-active"></div>'
]

{ #category : #tests }
MDLLayoutTabPanelTest >> testIsActiveIf [
	self assert: [ :html | html mdlLayoutTabPanel isActiveIf: true ] generates: '<div class="mdl-layout__tab-panel is-active"></div>'.
	self assert: [ :html | html mdlLayoutTabPanel isActiveIf: false ] generates: '<div class="mdl-layout__tab-panel"></div>'.
]

{ #category : #tests }
MDLLayoutTabPanelTest >> testWithContent [
	self assert: [ :html | html mdlLayoutTabPanel: 'test' ] generates: '<div class="mdl-layout__tab-panel">test</div>'
]
