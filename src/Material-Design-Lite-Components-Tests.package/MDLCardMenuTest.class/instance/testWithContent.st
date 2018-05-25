tests
testWithContent
	self assert: [ :html | html mdlCardMenu: 'content' ] generates: '<div class="mdl-card__menu">content</div>'