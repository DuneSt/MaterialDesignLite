tests
testBareBrush
	self assert: [ :html | html mdlListSecondaryContent ] generates: '<span class="mdl-list__item-secondary-content"></span>'