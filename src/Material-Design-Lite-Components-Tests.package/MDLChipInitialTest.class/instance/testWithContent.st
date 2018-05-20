tests
testWithContent
	self assert: [ :html | html mdlChipContact: 'Test' ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" id="id1">Test</span>'