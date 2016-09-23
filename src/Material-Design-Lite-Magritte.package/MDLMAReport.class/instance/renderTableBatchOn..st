rendering-table
renderTableBatchOn: html
	self hasMoreThanOnePage ifTrue: [
		html tableRow: [
			html tableData
				class: 'batch';
				colSpan: self visibleColumns size;
				with: [
					self showBatchSize
						ifTrue: [ self renderBatchSizeCustomizationOn: html ].
					self showBatchPages
						ifTrue: [ self renderBatchItemsOn: html ].
					self showBatchFirstLast
						ifTrue: [ self renderBatchFirstOn: html ].
					self showBatchPreviousNext
						ifTrue: [ self renderBatchPreviousOn: html ].
					self showBatchPreviousNext
						ifTrue: [ self renderBatchNextOn: html ].
					self showBatchFirstLast
						ifTrue: [ self renderBatchLastOn: html ] ] ] ]