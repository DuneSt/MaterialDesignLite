tests
testRenderBareDialog
	self assert: [ :html | html render: dialog ] generatedIncludes: '<dialog class="mdl-dialog"'