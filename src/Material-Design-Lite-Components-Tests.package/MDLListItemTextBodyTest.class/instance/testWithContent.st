tests
testWithContent
	self assert: [ :html | html mdlListItemTextBody: 'test' ] generates: '<span class="mdl-list__item-text-body">test</span>'