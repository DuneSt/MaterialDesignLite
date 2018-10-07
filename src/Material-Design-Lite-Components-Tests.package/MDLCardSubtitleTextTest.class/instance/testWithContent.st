tests
testWithContent
	self assert: [ :html | html mdlCardSubtitleText: 'content' ] generates: '<div class="mdl-card__subtitle-text">content</div>'