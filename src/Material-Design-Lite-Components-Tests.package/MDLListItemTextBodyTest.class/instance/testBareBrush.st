tests
testBareBrush
	self assert: [ :html | html mdlListItemTextBody ] generates: '<span class="mdl-list__item-text-body"></span>'