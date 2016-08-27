rendering
renderContentOn: html
	"self renderHeaderOn: html."

	html div
		style: 'width: 400px; height: 100%; float: left;';
		with: [ html render: self nestedListExample ].
	html div
		style: 'height: 100%; width: calc( 100% - 401px ); float: left;';
		with: [ 
					html
						mdlGrid: [ 
							html
								mdlCell: [ 
									html render: (MDLSwitchWidget id: 'switch1').
									html render: (MDLSwitchWidget id: 'switch2' value: false).
									html render: (MDLDialogWidget title: 'My name is' content: 'Dialog' buttonName: 'Simple dialog') ] ].
					html render: self formSelectWidget.
					html form: [ html render: self selectWidget ].
					self renderCalendarOn: html.
					html div
						style: 'width: 800px';
						with: [ html render: table ].
					self renderFooterOn: html ]