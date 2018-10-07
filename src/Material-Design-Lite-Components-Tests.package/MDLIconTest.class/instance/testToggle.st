tests
testToggle
	self
		assert: [ :html | 
			html mdlIcon
				toggle;
				with: 'mood' ]
		generates: '<i class="material-icons mdl-icon-toggle__label">mood</i>'