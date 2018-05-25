tests
testWithContent
	self assert: [ :html | html mdlDialogTitle: 'title' ] generates: '<h4 class="mdl-dialog__title">title</h4>'