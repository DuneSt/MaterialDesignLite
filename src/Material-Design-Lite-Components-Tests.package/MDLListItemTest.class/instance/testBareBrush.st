tests
testBareBrush
	self assert: [ :html | html mdlListItem ] generates: '<li class="mdl-list__item"></li>'