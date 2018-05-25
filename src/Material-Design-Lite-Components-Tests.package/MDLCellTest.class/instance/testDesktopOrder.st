tests
testDesktopOrder
	self
		assert: [ :html | 
			html mdlCell
				desktopOrder: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2-desktop">Test</div>'