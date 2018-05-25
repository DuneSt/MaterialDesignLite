tests
testActionTextNotDisplayedIfNoAction
	"If there is no action, we should not have a the action name in the result."
	
	self
		deny: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						actionText: 'Button name';
						yourself) ]
		generatedIncludes: 'Button name'