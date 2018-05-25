tests
testBottomLeft
	self assert: [ :html | html mdlMenu bottomLeft ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-left"></ul>'