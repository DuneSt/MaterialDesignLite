tests
testIdIsEnsured
	self assert: [ :html | html render: calendar ] generatedIncludes: 'id="id1"'