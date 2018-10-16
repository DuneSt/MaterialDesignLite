tests
testUpdateBlockUseAjax
	self assert: [ :html | html render: component ] generatedIncludes: '<a href="/?3">2</a>'.
	component := self actualClass numberOfPages: 20 updateBlock: [ :a :b | "something" ].
	self assert: [ :html | html render: component ] generatedIncludes: '<button onclick="$.ajax('