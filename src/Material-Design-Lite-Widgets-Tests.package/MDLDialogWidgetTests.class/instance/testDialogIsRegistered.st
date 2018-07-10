tests
testDialogIsRegistered
	self assert: [ :html | html render: dialog ] generatedIncludes: '<script type="text/javascript">newDialog('