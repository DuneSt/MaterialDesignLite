private
formChooser
	^ MDLMGExampleFormChooser new asComponent
		addDecoration: (MDLMAFormDecoration buttons: (Array with: #save -> 'Create a new form'));
		yourself