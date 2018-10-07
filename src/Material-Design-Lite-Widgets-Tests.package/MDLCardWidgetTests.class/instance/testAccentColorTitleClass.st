tests
testAccentColorTitleClass
	card accentColorTitle: 'This is my test title' class: 'myClass'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--accent mdl-color-text--accent-contrast myClass"><h2 class="mdl-card__title-text">This is my test title</h2></div>'