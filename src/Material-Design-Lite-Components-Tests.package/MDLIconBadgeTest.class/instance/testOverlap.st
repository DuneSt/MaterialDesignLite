tests
testOverlap
	self
		assert: [ :html | 
			html mdlIconBadge
				overlap;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons mdl-badge--overlap">account_box</div>'