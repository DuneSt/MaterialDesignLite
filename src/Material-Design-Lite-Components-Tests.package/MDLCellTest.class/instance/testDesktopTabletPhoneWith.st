tests
testDesktopTabletPhoneWith
	self assert: [ :html | html mdlCellDesktop: 4 tablet: 3 phone: 2 with: 'Test' ] generates: '<div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet mdl-cell--2-col-phone">Test</div>'