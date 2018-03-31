rendering
renderScreenContentOn: html
	self
		render: self simpleTooltips on: html;
		render: self complexeTooltips on: html;
		render: self positionedTooltips on: html