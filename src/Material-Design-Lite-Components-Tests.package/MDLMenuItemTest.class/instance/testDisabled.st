tests
testDisabled
	self assert: [ :html | html mdlMenuItem disabled ] generates: '<li class="mdl-menu__item" disabled="true"></li>'