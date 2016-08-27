as yet unclassified
renderTopLeftMenuOn: html
	html div
		class: 'mdl-typography--text-center';
		with: [ html mdlButton icon
				id: #topLeftButton;
				with: [ html mdlIcon: #more_vert ].
			html mdlMenu
				topLeft;
				for: #topLeftButton;
				with: [ html mdlMenuItem: 'Unicorn'.
					html mdlMenuItem: 'Mandragore'.
					html mdlMenuItem: 'Nyan' ].
			html paragraph: 'Menu opening in the top left direction' ].
	html code: [ html preformatted with: 'html mdlButton icon
	id: #topLeftButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	topLeft;
	for: #topLeftButton;
	with: [ html mdlMenuItem: ''Unicorn''.
		html mdlMenuItem: ''Mandragore''.
		html mdlMenuItem: ''Nyan'' ]' ]