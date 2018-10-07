tests
testSelectable
	self assert: [ :html | html mdlTable selectable ] generates: '<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable"></table>'