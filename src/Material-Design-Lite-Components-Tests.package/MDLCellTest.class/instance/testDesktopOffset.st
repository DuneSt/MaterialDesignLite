tests
testDesktopOffset
	self
		assert: [ :html | 
			html mdlCell
				desktopOffset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset-desktop">Test</div>'