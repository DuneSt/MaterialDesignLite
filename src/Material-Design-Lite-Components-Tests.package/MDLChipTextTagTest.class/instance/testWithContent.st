tests
testWithContent
	self assert: [ :html | html mdlChipText: 'Example' ] generates: '<span class="mdl-chip__text">Example</span>'