tests
testScroll
	self assert: [ :html | html mdlLayoutHeader seamed ] generates: '<header class="mdl-layout__header mdl-layout__header--seamed"></header>'