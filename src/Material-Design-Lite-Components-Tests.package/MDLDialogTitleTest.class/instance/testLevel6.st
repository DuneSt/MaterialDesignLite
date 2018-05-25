tests
testLevel6
	self
		assert: [ :html | 
			html mdlDialogTitle
				level6;
				with: 'title' ]
		generates: '<h6 class="mdl-dialog__title">title</h6>'