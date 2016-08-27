rendering
renderTopMenusOn: html
	html mdlGrid class: 'examples'; with: [ 
		html mdlLayoutSpacer.
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-background'.
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: left;'; with: [ 
				html mdlButton icon
					id: #topLeftButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					topLeft;
					for: #topLeftButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ] ].
		html mdlCell class: 'menu-container mdl-shadow--2dp'; size: 2; with: [ 
			html div class: 'menu-background'.
			html div class: 'menu-bar mdl-color--primary mdl-color-text--primary-contrast'; style: 'text-align: right;'; with: [ 
				html mdlButton icon
					id: #topRightButton;
					with: [ html mdlIcon: #more_vert ].
				html mdlMenu
					topRight;
					for: #topRightButton;
					with: [ 
						html mdlMenuItem: 'Some Action'.
						html mdlMenuItem fullBleedDivider; with: 'Another Action'.
						html mdlMenuItem disabled; with: 'Disabled Action'.
						html mdlMenuItem: 'Yet Another Action' ] ] ].
		html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: 'Top Left' size: 2.
		html mdlCell: 'Top Right' size: 2.
		html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self menuTopLeftCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self menuTopRightCode ]