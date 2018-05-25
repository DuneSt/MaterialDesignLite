tests
testScroll
	self assert: [ :html | html mdlLayoutHeader scroll ] generates: '<header class="mdl-layout__header mdl-layout__header--scroll"></header>'