tests
testDescription
	select description: 'Test'.
	self assert: [ :html | html render: select ] generatedIncludes: '<span class="mdl-tooltip mdl-tooltip--large" for="id2">Test</span>'