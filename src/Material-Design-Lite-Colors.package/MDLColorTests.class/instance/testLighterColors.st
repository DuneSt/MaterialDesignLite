tests
testLighterColors
	MDLColor allDefaultsColors
		do: [ :aColor | 
			self assert: aColor lighter equals: (MDLColor tint: aColor tint code: '400').
			self assert: aColor lighter lighter equals: (MDLColor tint: aColor tint code: '300').
			self assert: aColor lighter lighter lighter equals: (MDLColor tint: aColor tint code: '200').
			self assert: aColor lighter lighter lighter lighter equals: (MDLColor tint: aColor tint code: '100').
			self assert: aColor lighter lighter lighter lighter lighter equals: (MDLColor tint: aColor tint code: '50') ]