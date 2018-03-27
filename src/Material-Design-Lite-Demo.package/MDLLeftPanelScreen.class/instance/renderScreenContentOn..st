rendering
renderScreenContentOn: html
	self
		render: self leftPanel fullWidth: true on: html;
		render: self leftPanelWithResizer fullWidth: true on: html