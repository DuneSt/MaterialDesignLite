tests
testHideTablet
	self assert: [ :html | html mdlCell hideTablet with: 'Test' ] generates: '<div class="mdl-cell mdl-cell--hide-tablet">Test</div>'