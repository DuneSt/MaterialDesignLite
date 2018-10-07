tests
testNoBackground
	self
		assert: [ :html | 
			html mdlIconBadge
				noBackground;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons mdl-badge--no-background">account_box</div>'