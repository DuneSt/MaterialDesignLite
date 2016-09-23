initialization
initialize
	super initialize.
	self class: 'mdl-js-snackbar'.
	self class: 'mdl-snackbar'.
	action := ''.
   timeout := self defaultTimeout