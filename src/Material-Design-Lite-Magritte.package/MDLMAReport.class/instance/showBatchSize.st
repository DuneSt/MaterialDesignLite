as yet unclassified
showBatchSize
	^ properties at: #showBatchSize ifAbsent: [ self defaulShowBatchSize ]