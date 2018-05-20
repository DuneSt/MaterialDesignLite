tests
testTabletOrder
	self
		assert: [ :html | 
			html mdlCell
				tabletOrder: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2-tablet">Test</div>'