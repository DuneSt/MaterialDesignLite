tests
testBareBrush
	self assert: [ :html | html mdlMenuItem ] generates: '<li class="mdl-menu__item"></li>'