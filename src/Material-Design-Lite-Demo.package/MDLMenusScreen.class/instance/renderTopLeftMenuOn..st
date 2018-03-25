demos
renderTopLeftMenuOn: html
	html div
		class: 'container';
		shadow: 2;
		with: [ html div class: 'background'.
			html div
				class: 'bar';
				with: [ html mdlButton icon
						id: #topLeftButton;
						with: [ html mdlIcon: #more_vert ].
					html mdlMenu
						topLeft;
						for: #topLeftButton;
						with: [ html mdlMenuItem: 'Some Action'.
							html mdlMenuItem
								fullBleedDivider;
								with: 'Another Action'.
							html mdlMenuItem
								disabled;
								with: 'Disabled Action'.
							html mdlMenuItem: 'Yet Another Action' ] ] ]