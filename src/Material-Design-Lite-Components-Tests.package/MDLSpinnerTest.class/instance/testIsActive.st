tests
testIsActive
	self assert: [ :html | html mdlSpinner active ] generates: '<div class="mdl-spinner mdl-js-spinner is-active"></div>'