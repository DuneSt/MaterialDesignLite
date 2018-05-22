tests
testThreeLine
	self assert: [ :html | html mdlListItem threeLine ] generates: '<li class="mdl-list__item mdl-list__item--three-line"></li>'