tests
testDisable
	self assert: [ :html | html mdlMenuItem disable ] generates: '<li class="mdl-menu__item" disabled="true"></li>'