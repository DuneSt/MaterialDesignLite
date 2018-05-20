tests
testBareBrush
	self assert: [ :html | html mdlFooter ] generates: '<footer class="mdl-mega-footer"></footer>'