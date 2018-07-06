tests
testHidden
	| bar |
	bar := MDLProgressBarWidget new.
	bar hide: false.
	self assert: [ :html | html render: bar ] generatedIncludes: 'MaterialProgress.setProgress'.
	bar hidden.
	self deny: [ :html | html render: bar ] generatedIncludes: 'MaterialProgress.setProgress'.
	