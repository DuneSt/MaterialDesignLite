"
Description
--------------------

I am a brush to create the content for a MDL Expansion Panel.
"
Class {
	#name : 'MDLExpansionPanelContent',
	#superclass : 'MDLDivTag',
	#category : 'Material-Design-Lite-Components-ExpansionPanels',
	#package : 'Material-Design-Lite-Components',
	#tag : 'ExpansionPanels'
}

{ #category : 'initialization' }
MDLExpansionPanelContent >> initialize [
	super initialize.
	self class: 'mdl-expansion-panel__content'
]
