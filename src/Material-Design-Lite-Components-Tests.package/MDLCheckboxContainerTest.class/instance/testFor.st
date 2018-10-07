tests
testFor
	self assert: [ :html | html mdlCheckboxContainer for: html nextId ] generates: '<label class="mdl-checkbox mdl-js-checkbox" for="id1"></label>'