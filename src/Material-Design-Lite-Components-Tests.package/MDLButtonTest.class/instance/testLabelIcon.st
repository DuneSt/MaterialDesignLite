tests
testLabelIcon
	self
		assert: [ :html | 
			html mdlButton
				labelIcon;
				with: [ html mdlIcon: 'mood' ] ]
		generates: '<label class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></label>'.
	self assert: [ :html | html mdlButton labelIcon: 'mood' ] generates: '<label class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></label>'