tests
testTitle
	card title: 'This is my test title'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title"><h2 class="mdl-card__title-text">This is my test title</h2></div>'