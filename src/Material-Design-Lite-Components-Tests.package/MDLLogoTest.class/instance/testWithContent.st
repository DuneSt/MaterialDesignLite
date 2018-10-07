tests
testWithContent
	self assert: [ :html | html mdlLogo: 'Logo' ] generates: '<div class="mdl-logo">Logo</div>'