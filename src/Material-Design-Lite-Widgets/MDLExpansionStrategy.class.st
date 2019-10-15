Class {
	#name : #MDLExpansionStrategy,
	#superclass : #Object,
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #rendering }
MDLExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	self subclassResponsibility
]

{ #category : #javascript }
MDLExpansionStrategy >> toggleScriptOn: html for: anExpansionPanel [
	^ self subclassResponsibility
]
