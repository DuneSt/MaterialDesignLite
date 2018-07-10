tests
testContent
	dialog content: [ :html | html text: 'Test' ].
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__content">Test</div>'.
	dialog content: MDLDialogWidgetSimpleWidgetMock new.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__content">This is a mock</div>'