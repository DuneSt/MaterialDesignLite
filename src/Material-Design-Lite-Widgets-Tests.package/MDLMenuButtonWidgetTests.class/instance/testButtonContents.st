tests
testButtonContents
	menu buttonContent: 'test'.
	self assert: [ :html | menu renderButtonContentOn: html ] generates: 'test'.
	menu buttonContent: [ :html | html mdlIcon: 'mood' ].
	self assert: [ :html | menu renderButtonContentOn: html ] generates: '<i class="material-icons">mood</i>'