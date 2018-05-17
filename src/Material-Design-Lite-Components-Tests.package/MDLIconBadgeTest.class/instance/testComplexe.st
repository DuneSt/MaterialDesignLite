tests
testComplexe
	self
		assert: [ :html | 
			html mdlIconBadge
				overlap;
				noBackground;
				dataBadge: 3;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons mdl-badge--overlap mdl-badge--no-background" data-badge="3">account_box</div>'