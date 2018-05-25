tests
testWithContent
	self assert: [ :html | html mdlMenuItem: 'test' ] generates: '<li class="mdl-menu__item">test</li>'