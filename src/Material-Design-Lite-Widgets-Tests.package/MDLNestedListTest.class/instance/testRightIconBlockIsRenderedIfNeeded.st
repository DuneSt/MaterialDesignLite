tests
testRightIconBlockIsRenderedIfNeeded
	list elements: self sampleElements keys.
	list rightIconBlock: [ :item :html | html mdlIcon: 'mood' ].
	self assert: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.
	list rightIconBlock: nil.
	self deny: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.