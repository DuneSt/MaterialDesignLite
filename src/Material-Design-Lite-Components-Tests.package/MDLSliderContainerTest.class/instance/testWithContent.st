tests
testWithContent
	self assert: [ :html | html mdlSliderContainer: 'test' ] generates: '<div class="mdl-slider-container">test</div>'