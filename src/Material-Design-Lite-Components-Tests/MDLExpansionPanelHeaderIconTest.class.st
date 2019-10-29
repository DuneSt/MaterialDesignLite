"
A MDLExpansionPanelHeaderIconTest is a test class for testing the behavior of MDLExpansionPanelHeaderIcon
"
Class {
	#name : #MDLExpansionPanelHeaderIconTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-ExpansionPanels'
}

{ #category : #tests }
MDLExpansionPanelHeaderIconTest >> testBareBrush [
	self assert: [ :html | html mdlExpansionPanelHeaderIcon ] generates: '<i class="material-icons mdl-expansion-panel__header-icon mdl-expansion-panel__header-icon-rotative">expand_less</i>'
]

{ #category : #tests }
MDLExpansionPanelHeaderIconTest >> testRotateWithState [
	self assert: [ :html | html mdlExpansionPanelHeaderIcon rotateWithState; with: 'face' ] generates: '<i class="material-icons mdl-expansion-panel__header-icon mdl-expansion-panel__header-icon-rotative">face</i>'
]

{ #category : #tests }
MDLExpansionPanelHeaderIconTest >> testWithContent [
	self assert: [ :html | html mdlExpansionPanelHeaderIcon: 'face' ] generates: '<i class="material-icons mdl-expansion-panel__header-icon">face</i>'
]
