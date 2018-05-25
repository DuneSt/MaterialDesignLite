tests
testLevel4
	self
		assert: [ :html | 
			html mdlDialogTitle
				level4;
				with: 'title' ]
		generates: '<h4 class="mdl-dialog__title">title</h4>'