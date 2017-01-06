researchField
displayResearchFieldDiv: html
	| fieldId |
	self flag: #TODO. "Should not put style information here, should be on another css file"
	fieldId := 'researchFieldId' , html nextId asString.
	self displayResearchField
		ifTrue: [ 
			html div
				class: #listResearchField;
				style: 'left: 10px;
    position: relative;
    width: calc(100% - 20px);';
				with: [ 
							html mdlTextFieldContainer: [ 
									html mdlTextFieldLabel
										for: fieldId;
										style: 'position: absolute;';
										with: 'Research'.
									self flag: #TODO.	"Use id instead of class"
									html mdlTextFieldInput
										id: fieldId;
										type: 'text';
										value: self displayResearchFilter;
										onChange:
												(html jQuery ajax
														callback: [ :filter | self displayResearchFilter: filter ] value: (JSStream on: 'event.target.value');
														onComplete: ((html jQuery: '.listContainer') load html: [ :htm | self renderListOn: htm ])) ] ] ]