tests
testTopLeft
	self assert: [ :html | html mdlMenu topLeft ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--top-left"></ul>'