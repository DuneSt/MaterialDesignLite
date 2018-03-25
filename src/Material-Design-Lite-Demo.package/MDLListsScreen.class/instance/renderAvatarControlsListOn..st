demos
renderAvatarControlsListOn: html
	html mdlList
		style: 'width: 300px';
		with: [ html
				mdlListItem: [ html
						mdlListPrimaryContent: [ html mdlIcon
								listItemAvatar;
								with: #person.
							html text: 'Bryan Cranston' ].
					html mdlListItemSecondaryAction
						with: [ html mdlCheckboxContainer
								for: html nextId;
								with: [ html mdlCheckbox
										id: html lastId;
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
								for: html nextId;
								rippleEffect;
								with: [ html mdlRadioButton
										id: html lastId;
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
								for: html nextId;
								with: [ html mdlSwitch
										id: html lastId;
										value: '1'.
									html mdlSwitchLabel ] ] ] ]