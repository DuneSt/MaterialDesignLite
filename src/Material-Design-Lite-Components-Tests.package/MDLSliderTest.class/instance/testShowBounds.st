tests
testShowBounds
	self assert: [ :html | html mdlSlider showBounds ] generates: '<input class="mdl-slider mdl-js-slider mdl-slider-bounds" type="range"/>'