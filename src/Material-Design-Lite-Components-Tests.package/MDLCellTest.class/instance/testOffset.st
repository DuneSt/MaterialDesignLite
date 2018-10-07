tests
testOffset
	self
		assert: [ :html | 
			html mdlCell
				offset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset">Test</div>'