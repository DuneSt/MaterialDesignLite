rendering-table
renderBatchSizeCustomizationOn: html
	html text: 'Rows per page: '.
	html
		render:
			((MDLMenuButtonWidget
				possibilities: self batchSizePossibilities
				label: #asString
				action: [ :o | self batchSize: o ]
				choosingText: self batchSize) sortBlock: [ :a :b | a key asInteger <= b key asInteger ]) yourself