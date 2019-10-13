Class {
	#name : #MDLExpansionPanelScreen,
	#superclass : #MDLWidgetDemo,
	#category : #'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLExpansionPanelScreen class >> description [
	^ 'Implementation of expansion panel for MDL.'
]

{ #category : #accessing }
MDLExpansionPanelScreen class >> icon [
	self flag: #TODO. "Choose better icon"
	^ #compmenusPng
]

{ #category : #accessing }
MDLExpansionPanelScreen class >> title [
	^ 'Expansion Panel'
]

{ #category : #'as yet unclassified' }
MDLExpansionPanelScreen >> expansionPanel [
	^ OrderedDictionary new
		add: 'Expansion panel' -> #renderExpansionPanelOn:;
		yourself
]

{ #category : #'as yet unclassified' }
MDLExpansionPanelScreen >> renderExpansionPanelOn: html [
	html div
		style: 'width: 800px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Personal data';
						description: 'Type your name and age';
						expandedBlock: [ :htmlCanvas |
							htmlCanvas text: 'hello' ];
						isExpanded: true;
						yourself) ]
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderScreenContentOn: html [
	self
		render: self expansionPanel on: html
]
