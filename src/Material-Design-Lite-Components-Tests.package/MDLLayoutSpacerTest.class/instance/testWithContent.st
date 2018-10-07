tests
testWithContent
	self assert: [ :html | html mdlLayoutSpacer: 'test' ] generates: '<div class="mdl-layout-spacer">test</div>'