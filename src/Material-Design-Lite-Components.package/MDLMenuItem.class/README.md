Description
--------------------

I am a brush to create a dropdown menu item.

Example
--------------------

	html div
		class: 'container';
		shadow: 2;
		with: [ html div
				class: 'bar';
				with: [ html mdlButton icon
						id: #bottomLeftButton;
						with: [ html mdlIcon: #more_vert ].
					html mdlMenu
						bottomLeft;
						for: #bottomLeftButton;
						with: [ html mdlMenuItem: 'Some Action'.
							html mdlMenuItem
								fullBleedDivider;
								with: 'Another Action'.
							html mdlMenuItem
								disabled;
								with: 'Disabled Action'.
							html mdlMenuItem: 'Yet Another Action' ] ].
			html div class: 'background' ]