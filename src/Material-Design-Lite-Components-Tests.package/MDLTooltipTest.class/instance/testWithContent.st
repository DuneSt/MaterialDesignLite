tests
testWithContent
	self assert: [ :html | html mdlTooltip with: 'test' ] generates: '<span class="mdl-tooltip">test</span>'