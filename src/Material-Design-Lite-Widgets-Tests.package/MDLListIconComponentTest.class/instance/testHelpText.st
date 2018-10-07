tests
testHelpText
	self
		assert: [ :html | html render: (MDLListIconComponent named: 'Test' helpText: 'This is an help text') ]
		generatedIncludes: '<span class="mdl-tooltip mdl-tooltip--large" for="id1">This is an help text</span>'