public api
atTopRightAddComponents: components
	"Components must be an array of WAComponents (render: will be called on them)"
	topRightSection isNilSection
		ifTrue: [ topRightSection := MDLFooterComponentsSection new ].
	topRightSection := topRightSection addComponents: components