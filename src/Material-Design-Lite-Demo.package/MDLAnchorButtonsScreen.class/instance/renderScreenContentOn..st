rendering
renderScreenContentOn: html
	self
		render: self fabColoredButtons on: html;
		render: self fabButtons on: html;
		render: self coloredButtons on: html;
		render: self raisedButtons on: html;
		render: self raisedColoredButtons on: html;
		render: self flatButtons on: html;
		render: self iconButtons on: html;
		render: self miniFabButtons on: html