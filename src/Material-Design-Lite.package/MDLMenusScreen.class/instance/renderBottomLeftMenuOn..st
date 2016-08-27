as yet unclassified
renderBottomLeftMenuOn: html
	html div
		class: 'mdl-typography--text-center';
		with: [ html mdlButton icon
				id: #bottomLeftButton;
				with: [ html mdlIcon: #more_vert ].
			html mdlMenu
				bottomLeft;
				for: #bottomLeftButton;
				with: [ html mdlMenuItem: 'Unicorn'.
					html mdlMenuItem: 'Mandragore'.
					html mdlMenuItem: 'Nyan' ].
			html paragraph: 'Menu opening in the bottom left direction' ].
	html preformatted: [ html code class: 'smalltalk'; with: 'html mdlButton icon
	id: #bottomLeftButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	bottomLeft;
	for: #bottomLeftButton;
	with: [ html mdlMenuItem: ''Unicorn''.
		html mdlMenuItem: ''Mandragore''.
		html mdlMenuItem: ''Nyan'' ]' ]