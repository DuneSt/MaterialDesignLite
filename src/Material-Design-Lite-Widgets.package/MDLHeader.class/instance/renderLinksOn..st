rendering
renderLinksOn: html
	self links do: [ :l | html render: l ]