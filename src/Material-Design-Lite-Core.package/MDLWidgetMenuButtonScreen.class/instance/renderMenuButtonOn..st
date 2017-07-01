code
renderMenuButtonOn: html
	html
		render:
			((MDLMenuButtonWidget
				possibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann')
				label: #asString
				action: [ :o | Transcript crShow: o ]
				choosingText: 'Select an user'
				description: 'Choose a user to log into the Transcript')
				sortBlock: [ :a :b | a < b ];
				yourself)