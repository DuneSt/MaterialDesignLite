tests
testFor
	self assert: [ :html | html mdlMenu for: html nextId ] generates: '<ul class="mdl-menu mdl-js-menu" for="id1"></ul>'