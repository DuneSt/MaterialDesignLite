"
A MDLExpansionPanelTagTest is a test class for testing the behavior of MDLExpansionPanelTag
"
Class {
	#name : #MDLExpansionPanelTagTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-ExpansionPanels'
}

{ #category : #tests }
MDLExpansionPanelTagTest >> testBareBrush [
	self assert: [ :html | html mdlExpansionPanel ] generates: '<div class="mdl-expansion-panel"></div>'
]

{ #category : #tests }
MDLExpansionPanelTagTest >> testWithContent [
	self assert: [ :html | 
		html mdlExpansionPanel: [
			html mdlExpansionPanelHeader: [ 
				html mdlExpansionPanelHeaderTitle: 'Hello'.
				html mdlExpansionPanelHeaderDescription: 'World'.
				html mdlExpansionPanelHeaderIcon: 'face' ].
			html mdlExpansionPanelContent: 'Content.' ] ] generates: '<div class="mdl-expansion-panel"><div class="mdl-expansion-panel__header"><div class="mdl-expansion-panel__header-title">Hello</div><div class="mdl-expansion-panel__header-description">World</div><i class="material-icons mdl-expansion-panel__header-icon">face</i></div><div class="mdl-expansion-panel__content">Content.</div></div>'
]
