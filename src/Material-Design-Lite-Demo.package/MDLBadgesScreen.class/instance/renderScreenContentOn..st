rendering
renderScreenContentOn: html
	self
		render: self iconBadges on: html;
		render: self textBadges on: html;
		render: self overlapedBadges on: html;
		render: self noBackgroundBadges on: html