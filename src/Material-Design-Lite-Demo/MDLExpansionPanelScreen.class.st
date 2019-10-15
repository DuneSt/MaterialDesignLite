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
MDLExpansionPanelScreen >> customIconsExpansionPanel [
	^ OrderedDictionary new
		add: 'Expansion panel with different custom icons for fold and expand.' -> #renderExpansionPanelWithCustomIconsOn:;
		add: 'Expansion panel with same custom icon for fold and expand.' -> #renderExpansionPanelWithCustomSameIconOn:;
		yourself
]

{ #category : #demos }
MDLExpansionPanelScreen >> expansionPanelWithActions [
	^ OrderedDictionary new
		add: 'Expansion panel performing actions on fold / expand.' -> #renderExpansionPanelWithActionsOnExpandFoldOn:;
		yourself
]

{ #category : #demos }
MDLExpansionPanelScreen >> expansionPanelWithStrategy [
	^ OrderedDictionary new
		add: 'Expansion panel loading lazily its content initially folded.' -> #renderExpansionPanelWithLazyStrategyOn:;
		add: 'Expansion panel loading lazily its content initially expanded.' -> #renderExpansionPanelWithLazyStrategyInitiallyExpandedOn:;
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

{ #category : #demos }
MDLExpansionPanelScreen >> renderExpansionPanelWithActionsOnExpandFoldOn: html [
	html div
		style: 'width: 800px';
		with: [ html
				render:
					(MDLExpansionPanel new
						title: 'Self-aware expansion panel';
						expandedBlock: [ :htmlCanvas |
							html text: 'Content for self-aware expansion panel' ];
						useAjaxExpansionStrategyOnExpand: [ :expansionPanel :htmlBrush |
							expansionPanel description: 'I know I am expanded.'.
							htmlBrush jQuery noop ]
						onFold: [ :expansionPanel :htmlBrush |
							expansionPanel description: 'I know I am folded.'.
							htmlBrush jQuery noop ];
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelScreen >> renderExpansionPanelWithCustomIconsOn: html [
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
						foldIcon: 'account_box';
						expandIcon: 'account_circle';
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelScreen >> renderExpansionPanelWithCustomSameIconOn: html [
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
						icon: 'face';
						yourself) ]
]

{ #category : #demos }
MDLExpansionPanelScreen >> renderExpansionPanelWithLazyStrategyInitiallyExpandedOn: html [
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
MDLExpansionPanelScreen >> renderExpansionPanelWithLazyStrategyOn: html [
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
MDLExpansionPanelScreen >> renderScreenContentOn: html [
	self
		render: self basicExpansionPanel on: html;
		render: self customIconsExpansionPanel on: html;
		render: self expansionPanelWithStrategy on: html;
		render: self expansionPanelWithActions on: html
]
