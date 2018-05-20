tests
testAltText
	self assert: [ :html | html mdlChipImage altText: 'A message' ] generatedIncludes: '<img alt="A message" class="mdl-chip__contact" id="id1"/>'