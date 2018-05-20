tests
testWithContent
	self assert: [ :html | html mdlDialogActions: 'Test' ] generates: '<div class="mdl-dialog__actions">Test</div>'