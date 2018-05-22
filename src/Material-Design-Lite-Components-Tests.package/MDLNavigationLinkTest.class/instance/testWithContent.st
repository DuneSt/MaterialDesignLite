tests
testWithContent
	self assert: [ :html | html mdlNavigationLink: 'test' ] generates: '<a class="mdl-navigation__link">test</a>'