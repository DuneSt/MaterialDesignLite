tests
testId
	self deny: [ :html | html render: calendar ] generatedIncludes: 'id="testId"'.
	calendar id: 'testId'.
	self assert: [ :html | html render: calendar ] generatedIncludes: 'id="testId"'