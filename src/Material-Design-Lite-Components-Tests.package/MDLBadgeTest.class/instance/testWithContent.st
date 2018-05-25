tests
testWithContent
	self
		assert: [ :html | 
			html mdlBadge
				dataBadge: '1';
				with: 'Test' ]
		generates: '<span class="mdl-badge" data-badge="1">Test</span>'