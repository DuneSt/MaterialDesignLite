tests
testBareBrush
	self assert: [ :html | html mdlListItemSubTitle ] generates: '<span class="mdl-list__item-sub-title"></span>'