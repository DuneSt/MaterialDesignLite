rendering
renderContentOn: html
	html div
		class: 'vertical-toolbar';
		with: [ 
					self buttons
						do: [ :button | 
							html div
								class: 'vertical-toolbar__button';
								with: [ html render: button ] ] ]