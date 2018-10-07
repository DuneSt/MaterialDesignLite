tests
testOrder
	self
		assert: [ :html | 
			html mdlCell
				order: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2">Test</div>'