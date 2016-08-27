tests
testAllDefaultExist
	|defaultColors|
	defaultColors := (MDLColor class methodsInProtocol: #defaults) collect: [ :m | MDLColor perform: m selector ].
	self assert: defaultColors size equals: 19