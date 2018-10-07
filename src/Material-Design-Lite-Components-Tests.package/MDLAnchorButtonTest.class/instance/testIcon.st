tests
testIcon
	self
		assert: [ :html | 
			html mdlAnchorButton
				icon;
				with: [ html mdlIcon: 'mood' ] ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--icon"><i class="material-icons">mood</i></a>'.
	self assert: [ :html | html mdlAnchorButton icon: 'mood' ] generates: '<a class="mdl-button mdl-js-button mdl-button--icon"><i class="material-icons">mood</i></a>'