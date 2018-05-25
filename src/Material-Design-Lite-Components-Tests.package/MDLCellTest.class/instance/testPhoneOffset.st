tests
testPhoneOffset
	self
		assert: [ :html | 
			html mdlCell
				phoneOffset: 2;
				with: 'Test' ]
		generates: '<div class="mdl-cell mdl-cell--2-offset-phone">Test</div>'