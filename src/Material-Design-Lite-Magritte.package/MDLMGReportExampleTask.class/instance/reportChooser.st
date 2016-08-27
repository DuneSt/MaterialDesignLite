private
reportChooser
	^ (MDLMGReportChooser new asComponent)
		addDecoration: ((TWBSMagritteFormDecoration buttons: (Array with: #save -> 'Create a new report'))
			legend: 'Select a report style';
			formCss: 'form-horizontal' ;
			yourself );
		yourself