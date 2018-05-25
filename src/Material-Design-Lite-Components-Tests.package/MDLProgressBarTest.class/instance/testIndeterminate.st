tests
testIndeterminate
	self assert: [ :html | html mdlProgressBar indeterminate ] generates: '<div class="mdl-progress mdl-js-progress mdl-progress__indeterminate"></div>'