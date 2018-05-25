tests
testBottom
	self
		assert: [ :html | 
			html mdlCell
				bottom;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--bottom">Test</div>'