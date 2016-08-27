*Material-Design-Lite-Components
mdlSnackbar
	| snackbar |
	snackbar := MDLSnackbar new.
	self brush: snackbar.
	snackbar
		with: [ 
			self brush: MDLSnackbarText new.
			self brush: MDLSnackbarAction new ].
	^ snackbar