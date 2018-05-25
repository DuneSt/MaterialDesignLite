tests
testColor
	"Teal in hex is currently #009587"
	
	self assert: [ :html | html mdlChipContact color: MDLColor teal ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" style="background-color: #009587" id="id1"></span>'