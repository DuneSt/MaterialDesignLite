rendering
renderContentOn: html
	html mdlButton
		id: 'Calendar1';
		raised;
		rippleEffect;
		with: 'Pick a date'.
	html mdlDialog
		style: 'padding: 0px; width: -moz-fit-content; width: -webkit-fit-content; width: fit-content;';
		openButtonId: 'Calendar1';
		closeButtonId: 'PickDate';
		with: [ 
					html mdlDialogTitle
						class: 'mdl-typography--text-center mdl-color--primary mdl-color-text--primary-contrast';
						style: 'padding : 24px';
						with: self renderCalendarCurrentDate.
					html mdlDialogContent style: 'padding : 0px' ; with: [ self renderCalendarContentOn: html ].
					html mdlDialogActions: [ self renderButtonsOn: html ] ]