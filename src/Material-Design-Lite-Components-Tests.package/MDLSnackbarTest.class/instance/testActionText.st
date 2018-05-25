tests
testActionText
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						action: 'console.log("test")';
						actionText: 'Button name';
						yourself) ]
		generatedIncludes: 'Button name'