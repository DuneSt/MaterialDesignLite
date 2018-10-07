tests
testPhoneOrder
	self
		assert: [ :html | 
			html mdlCell
				phoneOrder: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--order-2-phone">Test</div>'