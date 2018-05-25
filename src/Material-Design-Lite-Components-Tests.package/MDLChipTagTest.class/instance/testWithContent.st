tests
testWithContent
	self assert: [ :html | html mdlChip: [ html mdlChipText: 'test' ] ] generates: '<span class="mdl-chip"><span class="mdl-chip__text">test</span></span>'