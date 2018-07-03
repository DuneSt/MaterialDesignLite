tests
testRefreshTime
	| bar |
	bar := MDLProgressBarWidget new.
	bar refreshTime: 100 milliSeconds.
	self assert: [ :html | html render: bar ] generatedIncludesAll: #('setInterval' '100').
	self deny: [ :html | html render: bar ] generatedIncludes: '10000'.
	bar refreshTime: 10 seconds.
	self assert: [ :html | html render: bar ] generatedIncludesAll: #('setInterval' '10000')