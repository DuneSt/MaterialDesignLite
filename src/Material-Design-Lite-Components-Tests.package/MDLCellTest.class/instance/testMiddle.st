tests
testMiddle
	self
		assert: [ :html | 
			html mdlCell
				middle;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--middle">Test</div>'