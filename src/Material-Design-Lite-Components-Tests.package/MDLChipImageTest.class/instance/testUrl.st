tests
testUrl
	self assert: [ :html | html mdlChipImage url: 'https://test.com/image.png' ] generatedIncludes: '<img alt="" src="https://test.com/image.png" class="mdl-chip__contact" id="id1"/>'