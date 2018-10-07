tests
testBareBrush
	self assert: [ :html | html mdlLayoutContent ] generates: '<main class="mdl-layout__content"></main>'