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

{ #category : #demos }
MDLExpansionPanelScreen >> basicExpansionPanel [
	^ OrderedDictionary new
		add: 'Basic expansion panel initially folded' -> #renderBasicExpansionPanelFoldedOn:;
		add: 'Basic expansion panel initially expanded' -> #renderBasicExpansionPanelExpandedOn:;
		yourself
]

{ #category : #demos }
MDLExpansionPanelScreen >> renderBasicExpansionPanelExpandedOn: html [
	html div
		style: 'width: 400px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Personal data';
						description: 'Type your name';
						expandedBlock: [ :htmlCanvas |
							html
								mdlTextFieldContainer: [ html mdlTextFieldLabel
										for: html nextId;
										with: 'e.g. John Doe'.
									html mdlTextFieldInput id: html lastId ]. ];
						isExpanded: true;
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelScreen >> renderBasicExpansionPanelFoldedOn: html [
	html div
		style: 'width: 400px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Personal data';
						description: 'Type your name';
						expandedBlock: [ :htmlCanvas | 
							html
								mdlTextFieldContainer: [ html mdlTextFieldLabel
										for: html nextId;
										with: 'e.g. John Doe'.
									html mdlTextFieldInput id: html lastId ]. ];
						isExpanded: false;
						yourself) ]
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderScreenContentOn: html [
	self
		render: self basicExpansionPanel on: html
]