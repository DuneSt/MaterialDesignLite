rendering
renderContentOn: html
	html mdlButton
		id: 'Calendar1';
		raised;
		rippleEffect;
		with: 'Pick a date'.
	html mdlDialog
		style: 'padding: 0px';
		openButtonId: 'Calendar1';
		closeButtonId: 'PickDate';
		with: [ 
					html mdlDialogTitle
						class: 'mdl-color--primary mdl-color-text--primary-contrast';
						style: 'padding : 24px';
						with: self renderCalendarCurrentDate.
					html mdlDialogContent style: 'padding : 0px' ; with: [ self renderCalendarContentOn: html ].
					html mdlDialogActions: [ self renderButtonsOn: html ] ]