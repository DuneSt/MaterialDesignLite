*Material-Design-Lite-Components
mdlSnackbarWithId: id
	| snackbar |
	snackbar := MDLSnackbar new
		id: id;
		yourself.
		
	self brush: snackbar.
	
	snackbar
		with: [ 
			self brush: MDLSnackbarText new.
			self brush: MDLSnackbarAction new ].
		
	^ snackbar