tests
testJsOnCompleteScript
	calendar onCompleteScript: 'console.log("test")' js.
	self assert: (calendar jsOnCompleteScript isKindOf: JSStream).
	self assert: calendar jsOnCompleteScript contents equals: 'console.log("test")'.
	calendar onCompleteScript: 'console.log("test")'.
	self assert: (calendar jsOnCompleteScript isKindOf: JSStream).
	self assert: calendar jsOnCompleteScript contents equals: 'console.log("test")'