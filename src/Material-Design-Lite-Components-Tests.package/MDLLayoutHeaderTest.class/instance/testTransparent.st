tests
testTransparent
	self assert: [ :html | html mdlLayoutHeader transparent ] generates: '<header class="mdl-layout__header mdl-layout__header--transparent"></header>'