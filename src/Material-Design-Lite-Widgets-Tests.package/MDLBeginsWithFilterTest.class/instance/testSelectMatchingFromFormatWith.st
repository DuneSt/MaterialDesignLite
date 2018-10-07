tests
testSelectMatchingFromFormatWith
	self assertCollection: (self actualClass selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest') format: [ :each | 'a' , each ] with: 'atest') hasSameElements: #('test')