tests
testWithContent
	self assert: [ :html | html mdlTable: 'test' ] generates: '<table class="mdl-data-table mdl-js-data-table">test</table>'