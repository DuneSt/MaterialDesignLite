"
A MDLExpansionPanelHeaderDescriptionTest is a test class for testing the behavior of MDLExpansionPanelHeaderDescription
"
Class {
	#name : #MDLExpansionPanelHeaderDescriptionTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-ExpansionPanels'
}

{ #category : #tests }
MDLExpansionPanelHeaderDescriptionTest >> testBareBrush [
	self assert: [ :html | html mdlExpansionPanelHeaderDescription ] generates: '<div class="mdl-expansion-panel__header-description"></div>'
]

{ #category : #tests }
MDLExpansionPanelHeaderDescriptionTest >> testWithContent [
	self assert: [ :html | html mdlExpansionPanelHeaderDescription: 'Desc.' ] generates: '<div class="mdl-expansion-panel__header-description">Desc.</div>'
]
