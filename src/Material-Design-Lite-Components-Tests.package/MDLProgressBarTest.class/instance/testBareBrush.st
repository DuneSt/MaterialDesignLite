tests
testBareBrush
	self assert: [ :html | html mdlProgressBar ] generates: '<div class="mdl-progress mdl-js-progress"></div>'