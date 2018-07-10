tests
testAddComponentOrBlock
	self
		assert: [ :html | 
			card addComponentOrBlock: [ html mdlButton: 'Validate' ].
			html render: card ]
		generates: '<div class="mdl-card mdl-card-widget"><button class="mdl-button mdl-js-button" type="submit">Validate</button></div>'