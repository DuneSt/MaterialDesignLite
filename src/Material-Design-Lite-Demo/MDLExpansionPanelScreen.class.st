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

{ #category : #sections }
MDLExpansionPanelScreen >> expansionMultipleDescriptions [
	^ OrderedDictionary new
		add: 'With multiple descriptions' -> #renderMultipleDescriptionsOn:;
		yourself
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderExpansionFoldedOn: html [
	html mdlExpansionPanel
		shadow: 2;
		fold;
		with: [ html mdlExpansionPanelHeader
				toggleExpansionOnClick;
				onClick: '
	if($(this).parent().hasClass("isFolded")) {
		$(this).find(".mdl-expansion-panel__header-icon").text("account_box");
		$(this).find(".mdl-expansion-panel__header-description").text("I am folded");
	}
	else {
		$(this).find(".mdl-expansion-panel__header-icon").text("account_circle");
		$(this).find(".mdl-expansion-panel__header-description").text("I am unfolded");
	}' js;
				with: [ html mdlExpansionPanelHeaderTitle: 'Personal data'.
					html mdlExpansionPanelHeaderDescription: 'I am folded'.
					html mdlExpansionPanelHeaderIcon: 'account_box' ].
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
		with: [ html mdlExpansionPanelHeader
				toggleExpansionOnClick;
				with: [ html mdlExpansionPanelHeaderTitle: 'Personal data'.
					html mdlExpansionPanelHeaderDescription: 'Type your name'.
					html mdlExpansionPanelHeaderIcon ].
			html
				mdlExpansionPanelContent: [ html
						mdlTextFieldContainer: [ html mdlTextFieldLabel
								for: html nextId;
								with: 'e.g. John Doe'.
							html mdlTextFieldInput id: html lastId ] ] ]
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderMultipleDescriptionsOn: html [
	html mdlExpansionPanel
		shadow: 2;
		fold;
		with: [ html mdlExpansionPanelHeader
				toggleExpansionOnClick;
				with: [ html mdlExpansionPanelHeaderTitle: 'Start and end date'.
					html mdlExpansionPanelHeaderDescription: 'Start date: Feb 29, 2016'.
					html mdlExpansionPanelHeaderDescription: 'End date: Not set'.
					html mdlExpansionPanelHeaderIcon ].
			html
				mdlExpansionPanelContent: [ html
						mdlTextFieldContainer: [ html mdlTextFieldLabel
								for: html nextId;
								with: 'e.g. John Doe'.
							html mdlTextFieldInput id: html lastId ] ] ]
]

{ #category : #rendering }
MDLExpansionPanelScreen >> renderScreenContentOn: html [
	self
		render: self expansion on: html;
		render: self expansionMultipleDescriptions fullWidth: true on: html
]
