demos
renderSwitchOnOn: html
	html mdlSwitchContainer
		rippleEffect;
		style: 'width: 150px;';
		for: html nextId;
		with: [ html mdlSwitch
				value: true;
				id: html lastId.
			html mdlSwitchLabel: 'On / Off' ]