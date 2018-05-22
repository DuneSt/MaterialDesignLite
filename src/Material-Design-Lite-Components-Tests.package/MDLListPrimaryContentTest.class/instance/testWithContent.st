tests
testWithContent
	self assert: [ :html | html mdlListPrimaryContent: 'test' ] generates: '<span class="mdl-list__item-primary-content">test</span>'