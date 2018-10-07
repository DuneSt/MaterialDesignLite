tests
testBareBrush
	self assert: [ :html | html mdlListPrimaryContent ] generates: '<span class="mdl-list__item-primary-content"></span>'