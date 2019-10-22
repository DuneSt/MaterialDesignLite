"
A MDLExpansionPanelContentTest is a test class for testing the behavior of MDLExpansionPanelContent
"
Class {
	#name : #MDLExpansionPanelContentTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-ExpansionPanels'
}

{ #category : #tests }
MDLExpansionPanelContentTest >> testBareBrush [
	self assert: [ :html | html mdlExpansionPanelContent ] generates: '<div class="mdl-expansion-panel__content"></div>'
]

{ #category : #tests }
MDLExpansionPanelContentTest >> testWithContent [
	self assert: [ :html | html mdlExpansionPanelContent: 'Content.' ] generates: '<div class="mdl-expansion-panel__content">Content.</div>'
]
