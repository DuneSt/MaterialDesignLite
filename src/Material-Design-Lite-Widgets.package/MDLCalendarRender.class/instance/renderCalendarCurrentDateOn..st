as yet unclassified
renderCalendarCurrentDateOn: html
	html mdlDiv
		class: 'mdl-color--primary mdl-color-text--primary-contrast';
		with: [ 
			html mdlGrid: [ 
				html mdlCellDesktop: 3 tablet: 2	phone: 1 	with: [ 
					html text: calendar currentDate year ].
				html mdlCellDesktop: 9 tablet: 6 phone: 3 with: [ ]. 
				html mdlCellDesktop: 12 tablet: 8 phone: 4 with: [ 
					html heading level6; with: calendar currentDate ddmmyyyy ] ] ]