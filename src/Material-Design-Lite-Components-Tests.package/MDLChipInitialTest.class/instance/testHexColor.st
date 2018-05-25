tests
testHexColor
	self assert: [ :html | html mdlChipContact hexColor: '009587' ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" style="background-color: #009587" id="id1"></span>'