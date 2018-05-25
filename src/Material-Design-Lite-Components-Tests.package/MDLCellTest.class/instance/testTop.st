tests
testTop
	self
		assert: [ :html | 
			html mdlCell
				top;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--top">Test</div>'