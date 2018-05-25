tests
testComplexe
	self
		assert: [ :html | 
			html mdlBadge
				overlap;
				noBackground;
				dataBadge: 3;
				with: 'Test' ]
		generates: '<span class="mdl-badge mdl-badge--overlap mdl-badge--no-background" data-badge="3">Test</span>'