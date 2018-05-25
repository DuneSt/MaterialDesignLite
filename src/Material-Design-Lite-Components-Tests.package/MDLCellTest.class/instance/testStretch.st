tests
testStretch
	self
		assert: [ :html | 
			html mdlCell
				stretch;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--stretch">Test</div>'