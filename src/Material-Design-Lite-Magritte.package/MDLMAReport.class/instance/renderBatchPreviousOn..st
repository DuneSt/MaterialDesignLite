rendering-batch
renderBatchPreviousOn: html
	self isOnFirstPage
		ifFalse: [ 
			html anchor
				callback: [ self previousPage ];
				with: [ 
							html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'navigate_before' ] ] ]
		ifTrue: [ 
			html mdlButton
				colored;
				icon;
				with: [ html mdlIcon: 'navigate_before' ] ].
	html space