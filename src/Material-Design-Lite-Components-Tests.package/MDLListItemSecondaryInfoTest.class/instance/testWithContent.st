tests
testWithContent
	self assert: [ :html | html mdlListItemSecondaryInfo: 'test' ] generates: '<span class="mdl-list__item-secondary-info">test</span>'