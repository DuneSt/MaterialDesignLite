"
Description
--------------------

I am a brush to create the header for a MDL Expansion Panel.
"
Class {
	#name : #MDLExpansionPanelHeader,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-ExpansionPanels'
}

{ #category : #initialization }
MDLExpansionPanelHeader >> initialize [
	super initialize.
	self class: 'mdl-expansion-panel__header'
]

{ #category : #options }
MDLExpansionPanelHeader >> toggleExpansionOnClick [
	self onClick: 'this.parentNode.classList.toggle("isFolded")' js
]
