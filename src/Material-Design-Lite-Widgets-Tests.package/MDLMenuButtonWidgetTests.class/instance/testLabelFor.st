tests
testLabelFor
	menu textBlock: nil.
	self assert: (menu labelFor: 3) equals: '3'.
	menu textBlock: [ :e | e asUppercase ].
	self assert: (menu labelFor: 'test') equals: 'TEST'.
	menu textBlock: #asUppercase.
	self assert: (menu labelFor: 'test') equals: 'TEST'