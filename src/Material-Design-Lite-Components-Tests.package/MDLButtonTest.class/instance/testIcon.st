tests
testIcon
	self
		assert: [ :html | 
			html mdlButton
				icon;
				with: [ html mdlIcon: 'mood' ] ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></button>'.
	self assert: [ :html | html mdlButton icon: 'mood' ] generates: '<button class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></button>'