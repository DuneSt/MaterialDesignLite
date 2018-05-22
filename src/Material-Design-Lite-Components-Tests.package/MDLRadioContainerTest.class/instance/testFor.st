tests
testFor
	self assert: [ :html | html mdlRadioContainer for: html nextId ] generates: '<label class="mdl-radio mdl-js-radio" for="id1"></label>'