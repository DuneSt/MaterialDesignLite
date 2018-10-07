tests
testLevel5
	self
		assert: [ :html | 
			html mdlDialogTitle
				level5;
				with: 'title' ]
		generates: '<h5 class="mdl-dialog__title">title</h5>'