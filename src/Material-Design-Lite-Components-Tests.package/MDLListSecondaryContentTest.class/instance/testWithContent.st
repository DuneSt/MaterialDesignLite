tests
testWithContent
	self assert: [ :html | html mdlListSecondaryContent: 'test' ] generates: '<span class="mdl-list__item-secondary-content">test</span>'