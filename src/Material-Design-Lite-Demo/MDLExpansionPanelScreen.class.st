"
An expansion panel allows one to show aggregated data that can be expanded to show full data.
"
Class {
	#name : #MDLExpansionPanelScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLExpansionPanelScreen class >> icon [
	^ #compexpansionPng
]

{ #category : #accessing }
MDLExpansionPanelScreen class >> title [
	^ 'Expansion Panel'
]

{ #category : #sections }
MDLExpansionPanelScreen >> expansion [
	^ OrderedDictionary new
		add: 'Expansion panel expanded' -> #renderExpansionOn:;
		add: 'Expansion panel folded' -> #renderExpansionFoldedOn:;
		yourself
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderExpansionFoldedOn: html [
	html mdlExpansionPanel
		shadow: 2;
		fold;
		with: [ html
				mdlExpansionPanelHeader: [ 
					html mdlExpansionPanelHeaderTitle: 'Personal data'.
					html mdlExpansionPanelHeaderDescription: 'Type your name'.
					html mdlIcon: 'face' ].
			html
				mdlExpansionPanelContent: [ html
						mdlTextFieldContainer: [ html mdlTextFieldLabel
								for: html nextId;
								with: 'e.g. John Doe'.
							html mdlTextFieldInput id: html lastId ] ] ]
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderExpansionOn: html [
	html mdlExpansionPanel
		shadow: 2;
		expand; "Optional, this is the default."
		with: [ html
				mdlExpansionPanelHeader: [ 
					html mdlExpansionPanelHeaderTitle: 'Personal data'.
					html mdlExpansionPanelHeaderDescription: 'Type your name'.
					html mdlIcon: 'face' ].
			html
				mdlExpansionPanelContent: [ html
						mdlTextFieldContainer: [ html mdlTextFieldLabel
								for: html nextId;
								with: 'e.g. John Doe'.
							html mdlTextFieldInput id: html lastId ] ] ]
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderScreenContentOn: html [
	self render: self expansion on: html
]
