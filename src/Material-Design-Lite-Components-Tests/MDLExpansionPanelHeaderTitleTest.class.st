"
A MDLExpansionPanelHeaderTitleTest is a test class for testing the behavior of MDLExpansionPanelHeaderTitle
"
Class {
	#name : #MDLExpansionPanelHeaderTitleTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-ExpansionPanels'
}

{ #category : #tests }
MDLExpansionPanelHeaderTitleTest >> testBareBrush [
	self assert: [ :html | html mdlExpansionPanelHeaderTitle ] generates: '<div class="mdl-expansion-panel__header-title"></div>'
]

{ #category : #tests }
MDLExpansionPanelHeaderTitleTest >> testWithContent [
	self assert: [ :html | html mdlExpansionPanelHeaderTitle: 'Hello' ] generates: '<div class="mdl-expansion-panel__header-title">Hello</div>'
]
