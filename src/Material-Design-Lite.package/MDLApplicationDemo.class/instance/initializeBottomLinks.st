initialization
initializeBottomLinks
	^ {('Top section'
		->
			(Dictionary new
				at: 'Link1' put: [ self doNothing ];
				at: 'Link2' put: [ self doNothing ];
				at: 'Link3' put: [ self doNothing ];
				yourself))}