tests
testWithContent
	self assert: [ :html | html mdlCardTextContainer: 'test' ] generates: '<div class="mdl-card__supporting-text">test</div>'