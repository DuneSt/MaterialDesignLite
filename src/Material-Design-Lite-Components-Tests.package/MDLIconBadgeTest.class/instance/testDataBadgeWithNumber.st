tests
testDataBadgeWithNumber
	self
		assert: [ :html | 
			html mdlIconBadge
				dataBadge: 1;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons" data-badge="1">account_box</div>'