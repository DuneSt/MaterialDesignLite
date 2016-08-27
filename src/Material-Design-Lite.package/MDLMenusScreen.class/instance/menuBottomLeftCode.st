code
menuBottomLeftCode 
	^ 'html mdlButton icon
	id: #bottomLeftButton;
	with: [ html mdlIcon: #more_vert ].
html mdlMenu
	bottomLeft;
	for: #bottomLeftButton;
	with: [ 
		html mdlMenuItem: ''Some Action''.
		html mdlMenuItem fullBleedDivider; with: ''Another Action''.
		html mdlMenuItem disabled; with: ''Disabled Action''.
		html mdlMenuItem: ''Yet Another Action'' ]'