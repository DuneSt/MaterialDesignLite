tests
testWithContent
	self assert: [ :html | html mdlCardActions: 'test' ] generates: '<div class="mdl-card__actions">test</div>'