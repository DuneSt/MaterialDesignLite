researchField
displayResearchFieldDiv: html
	self displayResearchField
		ifTrue: [ 
			| fieldId |
			fieldId := 'researchFieldId' , html nextId asString.
			html div
				class: #listResearchField;
				with: [ 
							html
								mdlTextFieldContainer: [ 
									html mdlTextFieldLabel
										for: fieldId;
										with: 'Search'.
									self flag: #TODO.	"Use id instead of class"
									html mdlTextFieldInput
										id: fieldId;
										type: 'text';
										value: self displayResearchFilter;
										onChange:
												(html jQuery ajax
														callback: [ :filt | self displayResearchFilter: filt ] value: (JSStream on: 'event.target.value');
														onComplete:
																((html jQuery: '#' , (self idFor: #listContainer)) parent load
																		html: [ :htm | self renderListOn: htm ];
																		onComplete: 'scrollToSelection();defineExpandable();')) ] ] ]