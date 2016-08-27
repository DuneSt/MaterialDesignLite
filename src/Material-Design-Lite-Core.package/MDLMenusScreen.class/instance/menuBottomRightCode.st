code
menuBottomRightCode 
	^ 'html mdlButton icon
	id: #bottomRightButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	bottomRight;
	for: #bottomRightButton;
	with: [ 
		html mdlMenuItem: ''Some Action''.
		html mdlMenuItem fullBleedDivider; with: ''Another Action''.
		html mdlMenuItem disabled; with: ''Disabled Action''.
		html mdlMenuItem: ''Yet Another Action''  ]'