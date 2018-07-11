tests
testTitleLevel
	card title: 'This is my test title' level: 3.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title"><h3 class="mdl-card__title-text">This is my test title</h3></div>'