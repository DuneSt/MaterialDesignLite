tests
testWithContent
	self assert: [ :html | html mdlTableCell: 'test' ] generates: '<td class="mdl-data-table__cell--non-numeric">test</td>'