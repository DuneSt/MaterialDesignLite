rendering
renderLinksOn: html
	links do: [ :l | self renderLink: l on: html ]