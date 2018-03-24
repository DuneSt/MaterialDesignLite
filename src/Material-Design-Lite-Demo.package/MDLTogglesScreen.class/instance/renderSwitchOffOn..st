demos
renderSwitchOffOn: html
	html mdlSwitchContainer
		rippleEffect;
		style: 'width: 150px;';
		for: html nextId;
		with: [ html mdlSwitch id: html lastId.
			html mdlSwitchLabel: 'On / Off' ]