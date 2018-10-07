tests
testBareBrush
	self assert: [ :html | html mdlTableCell ] generates: '<td class="mdl-data-table__cell--non-numeric"></td>'