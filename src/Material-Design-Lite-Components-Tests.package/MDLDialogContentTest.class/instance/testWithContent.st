tests
testWithContent
	self assert: [ :html | html mdlDialogContent: 'Test' ] generates: '<div class="mdl-dialog__content">Test</div>'