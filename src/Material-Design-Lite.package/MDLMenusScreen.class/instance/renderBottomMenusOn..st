rendering
renderBottomMenusOn: html
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: left;'; with: [ 
				html mdlButton icon
					id: #bottomLeftButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					bottomLeft;
					for: #bottomLeftButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ].
			html div class: 'menu-background' ].
		html mdlLayoutSpacer.
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: right;'; with: [ 
				html mdlButton icon
					id: #bottomRightButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					bottomRight;
					for: #bottomRightButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ].
			html div class: 'menu-background' ].
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Lower Left' size: 2.
		html mdlLayoutSpacer.
		html mdlCell: 'Lower Right' size: 2.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self menuBottomLeftCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self menuBottomRightCode ]