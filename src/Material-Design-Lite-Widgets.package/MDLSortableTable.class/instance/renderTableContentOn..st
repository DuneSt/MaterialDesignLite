rendering
renderTableContentOn: html
	"We cache the rows because it is possible that the user give a block to execute."

	rowsCache := self rows.
	self ensureCurrentPageIsVisible.
	self title
		ifNotNil: [ 
			html mdlCardTitleContainer
				style: 'padding-left: 24px;';
				with: [ html mdlCardTitleText: self title level: 2 ] ].
	(selectable
		ifTrue: [ html mdlTable selectable ]
		ifFalse: [ html mdlTable ])
		style: 'width: 100%; border: none;';
		with: [ 
					self renderHeaderOn: html.
					self renderRowsOn: html ].
	self shouldDisplayPagination
		ifTrue: [ self renderFooterPaginationOn: html ]