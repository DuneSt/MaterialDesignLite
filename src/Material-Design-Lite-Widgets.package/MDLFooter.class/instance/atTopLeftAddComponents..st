public api
atTopLeftAddComponents: components
	"Components must be an array of WAComponents (render: will be called on them)"
	topSection isNilSection
		ifTrue: [ topSection := MDLFooterTopSection new ].
	topSection := topSection addComponentsToLeftSide: components