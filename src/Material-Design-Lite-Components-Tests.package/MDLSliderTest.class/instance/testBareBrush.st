tests
testBareBrush
	self assert: [ :html | html mdlSlider ] generates: '<input class="mdl-slider mdl-js-slider" type="range"/>'