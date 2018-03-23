rendering
renderScreenContentOn: html
	self
		render: self iconBadges on: html;
		render: self textBadges on: html