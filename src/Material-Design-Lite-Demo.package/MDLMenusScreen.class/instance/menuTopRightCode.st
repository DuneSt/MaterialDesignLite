code
menuTopRightCode 
	^ 'html mdlButton icon
	id: #topRightButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	topRight;
	for: #topRightButton;
	with: [ 
		html mdlMenuItem: ''Some Action''.
		html mdlMenuItem fullBleedDivider; with: ''Another Action''.
		html mdlMenuItem disabled; with: ''Disabled Action''.
		html mdlMenuItem: ''Yet Another Action''  ]'