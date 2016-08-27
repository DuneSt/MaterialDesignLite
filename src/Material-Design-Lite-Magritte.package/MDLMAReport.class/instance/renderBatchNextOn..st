rendering-batch
renderBatchNextOn: html
	self isOnLastPage
		ifFalse: [ 
			html anchor
				callback: [ self nextPage ];
				with: [ 
							html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'navigate_next' ] ] ]
		ifTrue: [ 
			html mdlButton
				colored;
				icon;
				with: [ html mdlIcon: 'navigate_next' ] ].
	html space