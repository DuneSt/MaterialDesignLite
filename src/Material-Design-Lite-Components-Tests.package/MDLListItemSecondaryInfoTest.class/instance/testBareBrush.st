tests
testBareBrush
	self assert: [ :html | html mdlListItemSecondaryInfo ] generates: '<span class="mdl-list__item-secondary-info"></span>'