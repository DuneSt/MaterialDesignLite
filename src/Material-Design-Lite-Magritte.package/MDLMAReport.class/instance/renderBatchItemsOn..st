rendering-batch
renderBatchItemsOn: html
	| position |
	position := self batchPage - 1 * self batchSize.
	html text: '	'.
	html text: (position + 1) asString , ' - ' , (position + self batchSize min: rows size) asString , '  of ' , (self rows size) asString.
	html text: '	'