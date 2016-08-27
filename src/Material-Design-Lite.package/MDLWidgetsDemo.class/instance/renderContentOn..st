rendering
renderContentOn: html
	"self renderHeaderOn: html."

	html
		mdlGrid: [ 
			html mdlCell: [ html render: (MDLSwitchWidget id: 'switch1').
					html render: (MDLSwitchWidget id: 'switch2' value: false).
					html render: (MDLSimpleDialog title: 'My name is' content: 'Dialog' buttonName: 'Simple dialog') ] ].
	"html
		render:
			(MDLMenuButtonWidget
				possibilities: #(1 2 3 4)
				label: #asString
				action: [ :o | Transcript crShow: o asString ]
				choosingText: 'Select Your Number'
				description: 'description')."
	
	html mdlGrid: [ table renderContentOn: html ].
	
	self renderFooterOn: html