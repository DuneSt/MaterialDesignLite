"
Description
--------------------

I am a brush to create the description for a MDL Expansion Panel Header.
"
Class {
	#name : #MDLExpansionPanelHeaderDescription,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-ExpansionPanels'
}

{ #category : #initialization }
MDLExpansionPanelHeaderDescription >> initialize [
	super initialize.
	self class: 'mdl-expansion-panel__header-description'
]
