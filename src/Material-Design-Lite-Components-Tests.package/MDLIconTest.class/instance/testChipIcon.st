tests
testChipIcon
	self
		assert: [ :html | 
			html mdlIcon
				chipIcon;
				with: 'mood' ]
		generatedIncludes: '<i class="material-icons mdl-chip__contact" id="id1">mood</i>'