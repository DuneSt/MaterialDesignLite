tests
testAccentColorTitle
	card accentColorTitle: 'This is my test title'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--accent mdl-color-text--accent-contrast"><h2 class="mdl-card__title-text">This is my test title</h2></div>'