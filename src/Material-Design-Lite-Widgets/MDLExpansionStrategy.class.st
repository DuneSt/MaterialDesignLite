"
I am an abstract expansion strategy, I define the minimal API such strategy should implement.
"
Class {
	#name : #MDLExpansionStrategy,
	#superclass : #Object,
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #testing }
MDLExpansionStrategy >> isAjaxExpansionStrategy [
	^ false
]

{ #category : #rendering }
MDLExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	self subclassResponsibility
]

{ #category : #javascript }
MDLExpansionStrategy >> toggleScriptOn: htmlCanvas for: anExpansionPanel [
	^ self subclassResponsibility
]
