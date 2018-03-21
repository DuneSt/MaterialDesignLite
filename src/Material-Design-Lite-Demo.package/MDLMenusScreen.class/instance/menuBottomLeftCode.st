code
menuBottomLeftCode 
	^ 'html mdlButton icon
	id: #bottomLeftButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	bottomLeft;
	for: #bottomLeftButton;
	with: [ html mdlMenuItem: ''Unicorn''.
		html mdlMenuItem: ''Mandragore''.
		html mdlMenuItem: ''Nyan'' ]'