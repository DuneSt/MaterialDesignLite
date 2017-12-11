researchField
renderFilterFieldOn: html
	self displayResearchField
		ifFalse: [ ^ self ].
	html div
		class: #listResearchField;
		with: [ html
				mdlTextFieldContainer: [ html mdlTextFieldLabel
						for: (self idFor: #researchFieldId);
						with: 'Search'.
					html mdlTextFieldInput
						id: (self idFor: #researchFieldId);
						type: 'text';
						value: self displayResearchFilter;
						onChange:
							(html jQuery ajax
								callback: [ :filt | self displayResearchFilter: filt ] value: 'event.target.value' js;
								onComplete:
									((html jQuery: '#' , (self idFor: #listContainer)) parent load
										html: [ :htm | self renderListOn: htm ];
										onComplete: ('scrollToSelection();defineExpandable();stopSpinnerOf("' , (self idFor: #researchFieldId) , '")') js)) ].
			html mdlSpinner singleColor ]