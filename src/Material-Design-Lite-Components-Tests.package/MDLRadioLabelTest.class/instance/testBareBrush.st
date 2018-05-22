tests
testBareBrush
	self assert: [ :html | html brush: MDLRadioLabel new ] generates: '<span class="mdl-radio__label"></span>'