tests
testBareBrush
	self assert: [ :html | html mdlRadioButton ] generates: '<input class="mdl-radio__button" type="radio"/>'