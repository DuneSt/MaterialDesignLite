tests
testWithContent
	self assert: [ :html | html mdlIconBadge: 'account_box' ] generates: '<div class="mdl-badge material-icons">account_box</div>'