rendering-batch
renderBatchLastOn: html
	self isOnLastPage
		ifFalse: [ 
			html anchor
				callback: [ self batchPage: self batchMaxPages ];
				with: [ 
							html mdlButton
								colored;
								icon;
								with: [ html mdlIcon: 'skip_next' ] ] ]
		ifTrue: [ 
			html mdlButton
				colored;
				icon;
				with: [ html mdlIcon: 'skip_next' ] ]