tests
testBareBrush
	self assert: [ :html | html mdlSliderContainer ] generates: '<div class="mdl-slider-container"></div>'