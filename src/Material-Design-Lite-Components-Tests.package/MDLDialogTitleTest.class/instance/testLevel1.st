tests
testLevel1
	self
		assert: [ :html | 
			html mdlDialogTitle
				level1;
				with: 'title' ]
		generates: '<h1 class="mdl-dialog__title">title</h1>'