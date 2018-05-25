tests
testBareBrush
	self assert: [ :html | html mdlChipImage ] generatedIncludes: '<img alt="" class="mdl-chip__contact" id="id1"/>'