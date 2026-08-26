"
I am an abstract expansion strategy, I define the minimal API such strategy should implement.
"
Class {
	#name : 'MDLExpansionStrategy',
	#superclass : 'Object',
	#category : 'Material-Design-Lite-Widgets-Expansion',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Expansion'
}

{ #category : 'javascript' }
MDLExpansionStrategy >> customize: anExpansionPanelHeader in: anExpansionPanel on: html [
	^ self subclassResponsibility
]

{ #category : 'testing' }
MDLExpansionStrategy >> isAjaxExpansionStrategy [
	^ false
]

{ #category : 'rendering' }
MDLExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	self subclassResponsibility
]
