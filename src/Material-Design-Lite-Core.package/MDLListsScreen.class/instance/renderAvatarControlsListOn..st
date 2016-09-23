rendering
renderAvatarControlsListOn: html
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ html mdlList
				style: 'width: 300px';
				with: [ html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: 'Bryan Cranston' ].
							html mdlListItemSecondaryAction
								with: [ html mdlCheckboxContainer
										for: 'checkbox1';
										with: [ html mdlCheckbox
												id: 'checkbox1';
												value: true ] ] ].
					html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: 'Aaron Paul' ].
							html mdlListItemSecondaryAction
								with: [ html mdlRadioContainer
										style: 'display: inline;';
										for: 'radio1';
										rippleEffect;
										with: [ html mdlRadioButton
												id: 'radio1';
												value: '1';
												name: 'options' ] ] ].
					html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: 'Bob Odenkirk' ].
							html mdlListItemSecondaryAction
								with: [ html mdlSwitchContainer
										for: 'switch';
										with: [ html mdlSwitch
												id: 'switch';
												value: '1'.
											html mdlSwitchLabel ] ] ] ].
			html paragraph: 'List with Avatars and Controls' ].
	html preformatted: [ html code class: 'smalltalk';
				with: self avatardControlsListCode ]