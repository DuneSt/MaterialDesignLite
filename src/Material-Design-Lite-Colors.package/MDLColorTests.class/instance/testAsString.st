tests
testAsString
	self assert: MDLColor yellow asString equals: '(MDLColor tint: #yellow code: #''500'')'.
	self assert: MDLColor blue lighter lighter asString equals: '(MDLColor tint: #blue code: #''300'')'.
	self assert: MDLColor brown darker asString equals: '(MDLColor tint: #brown code: #''600'')'