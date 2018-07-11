tests
testAddAction
	self
		assert: [ :html | 
			card addAction: [ html mdlButton: 'Validate' ].
			html render: card ]
		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__actions"><button class="mdl-button mdl-js-button" type="submit">Validate</button></div></div>'