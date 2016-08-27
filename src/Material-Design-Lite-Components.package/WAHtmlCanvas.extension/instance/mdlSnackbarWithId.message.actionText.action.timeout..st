*Material-Design-Lite-Components
mdlSnackbarWithId: id message: message actionText: actionText action: someJs timeout: anInteger
	| snackbar |
	snackbar := MDLSnackbar new
		id: id;
		message: message;
		actionText: actionText;
		action: someJs;
		timeout: anInteger;
		yourself.
	self brush: snackbar.
	snackbar
		with: [ 
			self brush: MDLSnackbarText new.
			self brush: MDLSnackbarAction new ].
	^ snackbar