tests
testTitleLevelClass
	card title: 'This is my test title' level: 3 class: 'myClass'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title myClass"><h3 class="mdl-card__title-text">This is my test title</h3></div>'