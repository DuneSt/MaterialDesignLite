tests
testTimeout
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						timeout: 14390;
						yourself) ]
		generatedIncludes: '14390'