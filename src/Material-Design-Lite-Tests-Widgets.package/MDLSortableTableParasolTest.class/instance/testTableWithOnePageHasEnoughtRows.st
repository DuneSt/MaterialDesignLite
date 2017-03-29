tests
testTableWithOnePageHasEnoughtRows
	| tbody |
	tbody := driver findElementByTagName: #tbody.
	self assert: (tbody findElementsByTagName: 'tr') size equals: 8