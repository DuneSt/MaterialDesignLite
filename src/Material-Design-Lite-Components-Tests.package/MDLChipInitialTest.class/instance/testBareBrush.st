tests
testBareBrush
	self assert: [ :html | html mdlChipContact ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" id="id1"></span>'