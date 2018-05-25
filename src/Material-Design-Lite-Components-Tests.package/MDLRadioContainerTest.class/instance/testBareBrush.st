tests
testBareBrush
	self assert: [ :html | html mdlRadioContainer ] generates: '<label class="mdl-radio mdl-js-radio"></label>'