tests
testTableExists
	self assert: (driver findElementsByClassName: 'mdl-data-table') size equals: 1