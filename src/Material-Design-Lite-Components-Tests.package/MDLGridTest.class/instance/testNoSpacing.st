tests
testNoSpacing
	self
		assert: [ :html | 
			html mdlGrid
				noSpacing;
				with: 'test' ]
		generates: '<div class="mdl-grid mdl-grid--no-spacing">test</div>'