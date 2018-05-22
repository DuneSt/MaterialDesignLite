tests
testBottomRight
	self assert: [ :html | html mdlMenu bottomRight ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right"></ul>'