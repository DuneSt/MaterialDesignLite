*Material-Design-Lite-Components
mdlSnackbarWithId: id message: message
	| snackbar |
	snackbar := MDLSnackbar new
		id: id;
		message: message;
		yourself.
	self brush: snackbar.
	snackbar
		with: [ 
			self brush: MDLSnackbarText new.
			self brush: MDLSnackbarAction new ].
	^ snackbar