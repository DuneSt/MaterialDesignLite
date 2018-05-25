tests
testLevel3
	self
		assert: [ :html | 
			html mdlDialogTitle
				level3;
				with: 'title' ]
		generates: '<h3 class="mdl-dialog__title">title</h3>'