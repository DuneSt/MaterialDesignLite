tests
testJsOnLoadHook
	list onLoadHook: 'console.log("test")' js.
	self assert: (list jsOnLoadHook isKindOf: JSStream).
	self assert: list jsOnLoadHook contents equals: 'console.log("test")'.
	list onLoadHook: 'console.log("test")'.
	self assert: (list jsOnLoadHook isKindOf: JSStream).
	self assert: list jsOnLoadHook contents equals: 'console.log("test")'