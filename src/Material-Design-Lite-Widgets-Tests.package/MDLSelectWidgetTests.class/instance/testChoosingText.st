tests
testChoosingText
	select choosingText: 'This is a test'.
	self assert: [ :html | html render: select ] generatedIncludes: '<label class="mdl-textfield__label" for="id2">This is a test</label>'