tests
testFor
	self assert: [ :html | html mdlSwitchContainer for: html nextId ] generates: '<label class="mdl-switch mdl-js-switch" for="id1"></label>'