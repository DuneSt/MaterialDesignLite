as yet unclassified
renderContentOn: html
	html mdlButton
		id: 'Calendar1';
		raised;
		rippleEffect;
		with: 'Pick a date'.
	html mdlDialog
		openButtonId: 'Calendar1';
		closeButtonId: 'PickDate';
		with: [ 
					html mdlDialogTitle with: self renderCalendarCurrentDate.
					html mdlDialogContent with: [ html paragraph with: 'Hello' ].
					html mdlDialogActions with: [ self renderButtonsOn: html ] ]