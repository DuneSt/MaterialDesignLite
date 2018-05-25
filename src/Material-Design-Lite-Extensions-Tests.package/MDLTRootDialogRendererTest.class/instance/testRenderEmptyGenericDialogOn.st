tests
testRenderEmptyGenericDialogOn
	self
		assert: [ :html | MDLMockRootDialogRenderer new renderEmptyGenericDialogOn: html ]
		generatedIncludesAll: #('mdl-dialog' 'data-openbtnid="root-dialog__open"' 'data-closebtnid="root-dialog__close"')