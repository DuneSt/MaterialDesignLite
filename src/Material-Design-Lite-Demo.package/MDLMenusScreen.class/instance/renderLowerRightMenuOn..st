demos
renderLowerRightMenuOn: html
	html div
		class: 'container';
		shadow: 2;
		with: [ html div
				class: 'bar';
				with: [ html div
						class: 'wrapper';
						with: [ html mdlButton icon
								id: #bottomRightButton;
								with: [ html mdlIcon: #more_vert ].
							html mdlMenu
								bottomRight;
								for: #bottomRightButton;
								with: [ html mdlMenuItem: 'Some Action'.
									html mdlMenuItem
										fullBleedDivider;
										with: 'Another Action'.
									html mdlMenuItem
										disabled;
										with: 'Disabled Action'.
									html mdlMenuItem: 'Yet Another Action' ] ] ].
			html div class: 'background' ]