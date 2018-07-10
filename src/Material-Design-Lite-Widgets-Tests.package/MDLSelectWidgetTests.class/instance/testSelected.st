tests
testSelected
	select selected: 3.
	self assert: [ :html | html render: select ] generatedIncludes: 'value="3"'