tests
testDesktopSize
	self assert: [ :html | html mdlCell: 'Test' desktopSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-desktop">Test</div>'