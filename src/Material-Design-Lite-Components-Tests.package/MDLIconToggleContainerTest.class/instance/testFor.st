tests
testFor
	self assert: [ :html | html mdlIconToggleContainer for: html nextId ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle" for="id1"></label>'