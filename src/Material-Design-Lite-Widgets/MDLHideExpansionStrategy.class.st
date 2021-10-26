"
I am an expansion strategy that uses CSS properties to hide the expansion panel content when it should not be shown.

I also use a little of javascript to update the icon according to the state of the panel.
"
Class {
	#name : #MDLHideExpansionStrategy,
	#superclass : #MDLExpansionStrategy,
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #javascript }
MDLHideExpansionStrategy >> customize: anExpansionPanelHeader in: anExpansionPanel on: html [
	"Do nothing here."

	
]

{ #category : #rendering }
MDLHideExpansionStrategy >> renderExpansionPanel: anExpansionPanel contentOn: html [
	anExpansionPanel expandedBlock value: html
]
