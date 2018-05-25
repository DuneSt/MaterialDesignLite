tests
testBareBrush
	self assert: [ :html | html mdlListItemSecondaryAction ] generates: '<a class="mdl-list__item-secondary-action"></a>'