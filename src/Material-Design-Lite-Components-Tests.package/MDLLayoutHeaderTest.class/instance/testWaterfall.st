tests
testWaterfall
	self assert: [ :html | html mdlLayoutHeader waterfall ] generates: '<header class="mdl-layout__header mdl-layout__header--waterfall"></header>'