tests
testWithContent
	self assert: [ :html | html mdlTableHeading: 'test' ] generates: '<th class="mdl-data-table__cell--non-numeric">test</th>'