private
reportChooser
	^ MDLMGReportChooser new 
		asComponent addDecoration: 
			(MDLMAFormDecoration 
				buttons: 
					(Array with: 
						#save -> 'Create a new report'));
		yourself