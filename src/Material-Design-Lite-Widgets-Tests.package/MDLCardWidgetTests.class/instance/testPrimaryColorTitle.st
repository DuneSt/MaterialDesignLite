tests
testPrimaryColorTitle
	card primaryColorTitle: 'This is my test title'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--primary mdl-color-text--primary-contrast"><h2 class="mdl-card__title-text">This is my test title</h2></div>'