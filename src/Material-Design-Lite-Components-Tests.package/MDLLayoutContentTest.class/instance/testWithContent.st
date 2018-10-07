tests
testWithContent
	self assert: [ :html | html mdlLayoutContent: 'test' ] generates: '<main class="mdl-layout__content">test</main>'