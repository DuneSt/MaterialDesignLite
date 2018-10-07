tests
testTopRight
	self assert: [ :html | html mdlMenu topRight ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--top-right"></ul>'