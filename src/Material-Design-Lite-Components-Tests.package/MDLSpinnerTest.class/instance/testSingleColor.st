tests
testSingleColor
	self assert: [ :html | html mdlSpinner singleColor ] generates: '<div class="mdl-spinner mdl-js-spinner mdl-spinner--single-color"></div>'