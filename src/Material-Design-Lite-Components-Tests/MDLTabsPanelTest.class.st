Class {
	#name : #MDLTabsPanelTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLTabsPanelTest >> testBareBrush [
	self assert: [ :html | html mdlTabsPanel ] generates: '<div class="mdl-tabs__panel"></div>'
]

{ #category : #tests }
MDLTabsPanelTest >> testIsActive [
	self assert: [ :html | html mdlTabsPanel isActive ] generates: '<div class="mdl-tabs__panel is-active"></div>'
]

{ #category : #tests }
MDLTabsPanelTest >> testIsActiveIf [
	self assert: [ :html | html mdlTabsPanel isActiveIf: true ] generates: '<div class="mdl-tabs__panel is-active"></div>'.
	self assert: [ :html | html mdlTabsPanel isActiveIf: false ] generates: '<div class="mdl-tabs__panel"></div>'.
]

{ #category : #tests }
MDLTabsPanelTest >> testWithContent [
	self assert: [ :html | html mdlTabsPanel: 'test' ] generates: '<div class="mdl-tabs__panel">test</div>'
]
