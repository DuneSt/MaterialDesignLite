tests
testWaterfallHideTop
	self assert: [ :html | html mdlLayoutHeader waterfallHideTop ] generates: '<header class="mdl-layout__header mdl-layout__header--waterfall-hide-top"></header>'