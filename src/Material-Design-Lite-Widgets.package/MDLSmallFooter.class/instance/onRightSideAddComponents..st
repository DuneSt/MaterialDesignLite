adding
onRightSideAddComponents: components
	"Components must be an array of WAComponents (render: will be called on them)"
	rightSection isNilSection
		ifTrue: [ rightSection := MDLFooterComponentsSection new ].
	rightSection := rightSection addComponents: components