tests
testWithContent
	self assert: [ :html | html mdlListItemSubTitle: 'test' ] generates: '<span class="mdl-list__item-sub-title">test</span>'