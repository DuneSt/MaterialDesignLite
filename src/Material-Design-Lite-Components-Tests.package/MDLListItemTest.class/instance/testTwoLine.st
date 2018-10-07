tests
testTwoLine
	self assert: [ :html | html mdlListItem twoLine ] generates: '<li class="mdl-list__item mdl-list__item--two-line"></li>'