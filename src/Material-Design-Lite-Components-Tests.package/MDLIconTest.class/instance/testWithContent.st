tests
testWithContent
	self assert: [ :html | html mdlIcon: 'mood' ] generates: '<i class="material-icons">mood</i>'