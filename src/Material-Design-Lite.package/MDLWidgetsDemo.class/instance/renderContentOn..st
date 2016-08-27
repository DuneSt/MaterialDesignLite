rendering
renderContentOn: html
	"self renderHeaderOn: html."

	html
		mdlGrid: [ 
			html mdlCell: [ html render: (MDLSwitchWidget id: 'switch1').
					html render: (MDLSwitchWidget id: 'switch2' value: false).
					html render: (MDLSimpleDialog title: 'My name is' content: 'Dialog' buttonName: 'Simple dialog') ] ].
	html
		render:
			(MDLFormSelectWidget
				possibilities: #(1 2 3 4)
				label: #asString
				choosingText: 'Select Your Number'
				description: 'description').
	self renderCalendarOn: html.
	html mdlGrid: [ table renderContentOn: html ].
	
	self renderFooterOn: html