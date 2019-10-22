"
Description
--------------------

I am a brush to create a MDL Expansion Panels.
"
Class {
	#name : #MDLExpansionPanelTag,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-ExpansionPanels'
}

{ #category : #actions }
MDLExpansionPanelTag >> expand [
	"This method does nothing on purpose because only folded expansion panel
	 get a new class named 'isFolded'.
	
	 One can call this method to specify explicitely that the expansion panel is
	 expanded.
	"
]

{ #category : #actions }
MDLExpansionPanelTag >> expandIf: aBoolean [
	"Sets the expansion panel in expanded state if aBoolean is true."
	self foldIf: aBoolean not
]

{ #category : #actions }
MDLExpansionPanelTag >> fold [
	"Sets the expansion panel in folded state."
	self class: 'isFolded'
]

{ #category : #actions }
MDLExpansionPanelTag >> foldIf: aBoolean [
	"Sets the expansion panel in folded state if aBoolean is true."
	aBoolean
		ifTrue: [ self fold ]
]

{ #category : #initialization }
MDLExpansionPanelTag >> initialize [
	super initialize.
	self class: 'mdl-expansion-panel'
]
