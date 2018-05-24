tests
testBareBrush
	self assert: [ :html | html mdlTable ] generates: '<table class="mdl-data-table mdl-js-data-table"></table>'