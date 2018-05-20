tests
testLevel2
	self
		assert: [ :html | 
			html mdlDialogTitle
				level2;
				with: 'title' ]
		generates: '<h2 class="mdl-dialog__title">title</h2>'