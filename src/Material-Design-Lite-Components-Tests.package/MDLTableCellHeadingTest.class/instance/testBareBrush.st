tests
testBareBrush
	self assert: [ :html | html mdlTableHeading ] generates: '<th class="mdl-data-table__cell--non-numeric"></th>'