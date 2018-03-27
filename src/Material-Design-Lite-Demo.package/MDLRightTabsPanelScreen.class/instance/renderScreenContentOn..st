rendering
renderScreenContentOn: html
	self
		render: self rightPanel fullWidth: true on: html;
		render: self rightPanelFolded fullWidth: true on: html