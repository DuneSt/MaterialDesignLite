tests
testWithContent
	self assert: [ :html | html mdlListItem: 'test' ] generates: '<li class="mdl-list__item">test</li>'