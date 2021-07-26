"
Description
--------------------

I am a brush to create the icon for a MDL Expansion Panel Header.
"
Class {
	#name : #MDLExpansionPanelHeaderIcon,
	#superclass : #MDLIcon,
	#category : #'Material-Design-Lite-Components-ExpansionPanels'
}

{ #category : #initialization }
MDLExpansionPanelHeaderIcon >> initialize [
	super initialize.
	self class: 'mdl-expansion-panel__header-icon'
]

{ #category : #initialization }
MDLExpansionPanelHeaderIcon >> rotateWithState [
	self class: 'mdl-expansion-panel__header-icon-rotative'
]

{ #category : #public }
MDLExpansionPanelHeaderIcon >> with: anObject [
	anObject
		ifNil: [
			self rotateWithState.
			super with: #expand_less ]
		ifNotNil: [ super with: anObject  ]
]
