"
A MDLExpansionPanelHeaderTest is a test class for testing the behavior of MDLExpansionPanelHeader
"
Class {
	#name : #MDLExpansionPanelHeaderTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-ExpansionPanels'
}

{ #category : #tests }
MDLExpansionPanelHeaderTest >> testBareBrush [
	self assert: [ :html | html mdlExpansionPanelHeader ] generates: '<div class="mdl-expansion-panel__header"></div>'
]

{ #category : #tests }
MDLExpansionPanelHeaderTest >> testWithContent [
	self assert: [ :html | 
		html mdlExpansionPanelHeader: [ 
			html mdlExpansionPanelHeaderTitle: 'Hello'.
			html mdlExpansionPanelHeaderDescription: 'World'.
			html mdlExpansionPanelHeaderIcon: 'face' ] ] generates: '<div class="mdl-expansion-panel__header"><div class="mdl-expansion-panel__header-title">Hello</div><div class="mdl-expansion-panel__header-description">World</div><i class="material-icons mdl-expansion-panel__header-icon">face</i></div>'
]
