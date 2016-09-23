rendering
renderScreenContentOn: html
	self render: self iconBadges withCardSizeOf: 1 on: html.
	self render: self textBadges withCardSizeOf: 1 on: html