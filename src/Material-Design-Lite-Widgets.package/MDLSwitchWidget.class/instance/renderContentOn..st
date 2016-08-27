rendering
renderContentOn: html
	html div 
		style: 'width: 28px;';
		with: [
			html mdlSwitchContainer for: (self id); with: [ 
				html mdlSwitch id: (self id); value: self value.
				html mdlSwitchLabel  
			]  
		]