"
Description
--------------------

I am a brush to create the title for a MDL Expansion Panels Header.
"
Class {
	#name : 'MDLExpansionPanelHeaderTitle',
	#superclass : 'MDLDivTag',
	#category : 'Material-Design-Lite-Components-ExpansionPanels',
	#package : 'Material-Design-Lite-Components',
	#tag : 'ExpansionPanels'
}

{ #category : 'initialization' }
MDLExpansionPanelHeaderTitle >> initialize [
	super initialize.
	self class: 'mdl-expansion-panel__header-title'
]
