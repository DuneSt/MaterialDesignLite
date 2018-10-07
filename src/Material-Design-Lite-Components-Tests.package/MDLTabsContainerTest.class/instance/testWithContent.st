tests
testWithContent
	self assert: [ :html | html mdlTabs: 'test' ] generates: '<div class="mdl-tabs mdl-js-tabs">test</div>'