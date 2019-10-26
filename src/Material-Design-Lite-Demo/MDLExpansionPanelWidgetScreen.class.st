"
Implementation of expansion panel for MDL.
"
Class {
	#name : #MDLExpansionPanelWidgetScreen,
	#superclass : #MDLWidgetDemo,
	#category : #'Material-Design-Lite-Demo-Widgets'
}

{ #category : #accessing }
MDLExpansionPanelWidgetScreen class >> icon [
	^ #compexpansionPng
]

{ #category : #accessing }
MDLExpansionPanelWidgetScreen class >> title [
	^ 'Expansion Panel'
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> ajaxExpansionPanel [
	^ OrderedDictionary new
		add: 'Expansion panel loading via ajax initially folded.' -> #renderExpansionPanelWithAjaxStrategyOn:;
		add: 'Expansion panel loading via ajax initially expanded.' -> #renderExpansionPanelWithAjaxStrategyInitiallyExpandedOn:;
		yourself
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> basicExpansionPanel [
	^ OrderedDictionary new
		add: 'Basic expansion panel initially folded' -> #renderBasicExpansionPanelFoldedOn:;
		add: 'Basic expansion panel initially expanded' -> #renderBasicExpansionPanelExpandedOn:;
		yourself
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> lazyExpansionPanel [
	^ OrderedDictionary new
		add: 'Expansion panel loading lazily initially folded.' -> #renderExpansionPanelWithLazyStrategyOn:;
		add: 'Expansion panel loading lazily initially expanded.' -> #renderExpansionPanelWithLazyStrategyInitiallyExpandedOn:;
		yourself
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> renderBasicExpansionPanelExpandedOn: html [
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
									html mdlTextFieldInput id: html lastId ] ];
						isExpanded: true;
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> renderBasicExpansionPanelFoldedOn: html [
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
									html mdlTextFieldInput id: html lastId ] ];
						isExpanded: false;
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> renderExpansionPanelWithAjaxStrategyInitiallyExpandedOn: html [
	| counter |
	counter := 0.
	html div
		style: 'width: 400px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Personal data';
						description: 'Type your name';
						useAjaxExpansionStrategy;
						expandedBlock: [ :htmlCanvas | 
							html text: 'Panel expanded ' , counter asString , ' times'.
							html
								mdlTextFieldContainer: [ html mdlTextFieldLabel
										for: html nextId;
										with: 'e.g. John Doe'.
									html mdlTextFieldInput id: html lastId ].
							counter := counter + 1 ];
						isExpanded: true;
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> renderExpansionPanelWithAjaxStrategyOn: html [
	| counter |
	counter := 0.
	html div
		style: 'width: 400px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Personal data';
						description: 'Type your name';
						useAjaxExpansionStrategy;
						expandedBlock: [ :htmlCanvas | 
							counter := counter + 1.
							html text: 'Panel expanded ' , counter asString , ' times'.
							html
								mdlTextFieldContainer: [ html mdlTextFieldLabel
										for: html nextId;
										with: 'e.g. John Doe'.
									html mdlTextFieldInput id: html lastId ] ];
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> renderExpansionPanelWithLazyStrategyInitiallyExpandedOn: html [
	html div
		style: 'width: 400px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Personal data';
						description: 'Type your name';
						useLazyExpansionStrategy;
						expandedBlock: [ :htmlCanvas |
							html
								mdlTextFieldContainer: [ html mdlTextFieldLabel
										for: html nextId;
										with: 'e.g. John Doe'.
									html mdlTextFieldInput id: html lastId ] ];
						isExpanded: true;
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelWidgetScreen >> renderExpansionPanelWithLazyStrategyOn: html [
	html div
		style: 'width: 400px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Personal data';
						description: 'Type your name';
						useLazyExpansionStrategy;
						expandedBlock: [ :htmlCanvas |
							html
								mdlTextFieldContainer: [ html mdlTextFieldLabel
										for: html nextId;
										with: 'e.g. John Doe'.
									html mdlTextFieldInput id: html lastId ] ];
						yourself) ]
]

{ #category : #rendering }
MDLExpansionPanelWidgetScreen >> renderScreenContentOn: html [
	self
		render: self basicExpansionPanel on: html;
		render: self lazyExpansionPanel on: html;
		render: self ajaxExpansionPanel on: html
]
