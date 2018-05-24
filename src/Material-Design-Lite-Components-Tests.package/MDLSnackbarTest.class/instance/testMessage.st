tests
testMessage
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						message: 'Message for the user';
						yourself) ]
		generatedIncludes: 'Message for the user'