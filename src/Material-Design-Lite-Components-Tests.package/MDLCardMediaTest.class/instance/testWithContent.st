tests
testWithContent
	self assert: [ :html | html mdlCardMedia: 'test' ] generates: '<div class="mdl-card__media">test</div>'