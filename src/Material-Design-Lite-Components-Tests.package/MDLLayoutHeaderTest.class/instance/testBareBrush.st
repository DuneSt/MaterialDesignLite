tests
testBareBrush
	self assert: [ :html | html mdlLayoutHeader ] generates: '<header class="mdl-layout__header"></header>'