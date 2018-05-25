tests
testTabletOffset
	self
		assert: [ :html | 
			html mdlCell
				tabletOffset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset-tablet">Test</div>'