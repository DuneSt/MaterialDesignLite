tests
testIconBlockIsRenderedIfNeeded
	list elements: self sampleElements keys.
	list iconBlock: [ :item :html | html mdlIcon: 'mood' ].
	self assert: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.
	list iconBlock: nil.
	self deny: [ :html | html render: list ] generatedIncludes: '<i class="material-icons">mood</i>'.