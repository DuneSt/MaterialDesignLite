public api
atTopLeftAddComponents: components
	"Components must be an array of WAComponents (render: will be called on them)"
	topLeftSection isNilSection
		ifTrue: [ topLeftSection := MDLFooterComponentsSection new ].
	topLeftSection := topLeftSection addComponents: components