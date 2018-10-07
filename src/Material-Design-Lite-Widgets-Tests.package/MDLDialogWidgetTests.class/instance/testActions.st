tests
testActions
	dialog actions: [ :html | html mdlButton: 'Test' ].
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__actions"><button class="mdl-button mdl-js-button" type="submit">Test</button>'.
	dialog actions: MDLDialogWidgetSimpleWidgetMock new.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__actions">This is a mock'