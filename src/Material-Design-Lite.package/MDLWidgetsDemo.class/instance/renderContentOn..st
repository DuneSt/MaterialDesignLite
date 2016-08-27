rendering
renderContentOn: html
	"self renderHeaderOn: html."
	html render: (MDLSwitchWidget id: 'switch1').
	html render: (MDLSwitchWidget id: 'switch2' value: false).