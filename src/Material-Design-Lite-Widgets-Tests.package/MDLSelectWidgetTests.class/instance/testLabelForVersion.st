tests
testLabelForVersion
	select labelBlock: nil.
	self assert: (select labelFor: 5 version: 0) equals: '5'.
	self assert: (select labelFor: 4 version: 0) equals: '4'.
	self assert: (select labelFor: 5 version: 2) equals: '5 (2)'.
	self assert: (select labelFor: 4 version: 3) equals: '4 (3)'