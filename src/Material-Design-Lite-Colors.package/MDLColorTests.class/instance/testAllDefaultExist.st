tests
testAllDefaultExist
	| defaultColors |
	defaultColors := MDLColor allDefaultsColors.
	self assert: defaultColors size equals: 19