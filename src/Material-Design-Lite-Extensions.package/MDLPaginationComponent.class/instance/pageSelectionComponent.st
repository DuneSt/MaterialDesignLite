components
pageSelectionComponent
	^ (MDLSelectWidget
		possibilities: (1 to: self numberOfPages)
		inputLabel: 'Page'
		labelBlock: [ :int | 
			String
				streamContents: [ :s | 
					s
						<< int;
						<< ' of ';
						<< self numberOfPages ] ]
		callback: [ :int | self currentPage: int ]
		selectedObject: self currentPage)
		beAutoSubmit;
		yourself