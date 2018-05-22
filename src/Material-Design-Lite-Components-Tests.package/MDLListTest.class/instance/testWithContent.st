tests
testWithContent
	self assert: [ :html | html mdlList: 'test' ] generates: '<ul class="mdl-list">test</ul>'