tests
testObjectsPossibilitiesWithLabel
	menu textBlock: #asUppercase.
	menu sortBlock: [ :a :b | a < b ].
	self
		assert: menu objectsPossibilitiesWithLabel
		equals:
			{('DESIGN' -> 'design').
			('LITE' -> 'lite').
			('MATERIAL' -> 'material')}.
	menu sortBlock: [ :a :b | b < a ].
	self
		assert: menu objectsPossibilitiesWithLabel
		equals:
			{('MATERIAL' -> 'material').
			('LITE' -> 'lite').
			('DESIGN' -> 'design')}