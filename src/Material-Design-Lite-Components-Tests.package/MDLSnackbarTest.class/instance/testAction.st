tests
testAction
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						action: 'console.log(''test'')';
						yourself) ]
		generatedIncludes: 'function(event){console.log(''test'')};'