tests
testDarkerColors
	MDLColor allDefaultsColors
		do: [ :aColor | 
			self assert: aColor darker equals: (MDLColor tint: aColor tint code: '600').
			self assert: aColor darker darker equals: (MDLColor tint: aColor tint code: '700').
			self assert: aColor darker darker darker equals: (MDLColor tint: aColor tint code: '800').
			self assert: aColor darker darker darker darker equals: (MDLColor tint: aColor tint code: '900') ]