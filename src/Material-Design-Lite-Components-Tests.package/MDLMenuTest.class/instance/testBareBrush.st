tests
testBareBrush
	self assert: [ :html | html mdlMenu ] generates: '<ul class="mdl-menu mdl-js-menu"></ul>'