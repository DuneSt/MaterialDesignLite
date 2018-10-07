tests
testWithContent
	self assert: [ :html | html mdlListItemSecondaryAction: 'test' ] generates: '<a class="mdl-list__item-secondary-action">test</a>'