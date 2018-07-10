tests
testAddTextContainerClass
	card addTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.' class: 'myClass'.
	self
		assert: [ :html | html render: card ]
		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__supporting-text myClass">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.</div></div>'