tests
testHideDesktop
	self
		assert: [ :html | 
			html mdlCell
				hideDesktop;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--hide-desktop">Test</div>'