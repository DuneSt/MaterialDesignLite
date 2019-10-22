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
MDLExpansionPanelTagTest >> testBareBrushExpanded [
	self assert: [ :html | html mdlExpansionPanel expand ] generates: '<div class="mdl-expansion-panel"></div>'
]

{ #category : #tests }
MDLExpansionPanelTagTest >> testBareBrushFolded [
	self assert: [ :html | html mdlExpansionPanel fold ] generates: '<div class="mdl-expansion-panel isFolded"></div>'
]

{ #category : #tests }
MDLExpansionPanelTagTest >> testExpandIf [
	self assert: [ :html | html mdlExpansionPanel expandIf: false ] generates: '<div class="mdl-expansion-panel isFolded"></div>'
]

{ #category : #tests }
MDLExpansionPanelTagTest >> testExpandIf2 [
	self assert: [ :html | html mdlExpansionPanel expandIf: true ] generates: '<div class="mdl-expansion-panel"></div>'
]

{ #category : #tests }
MDLExpansionPanelTagTest >> testFoldIf [
	self assert: [ :html | html mdlExpansionPanel foldIf: true ] generates: '<div class="mdl-expansion-panel isFolded"></div>'
]

{ #category : #tests }
MDLExpansionPanelTagTest >> testFoldIf2 [
	self assert: [ :html | html mdlExpansionPanel foldIf: false ] generates: '<div class="mdl-expansion-panel"></div>'
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
