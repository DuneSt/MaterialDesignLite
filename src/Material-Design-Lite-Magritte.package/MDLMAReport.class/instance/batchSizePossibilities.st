accessing
batchSizePossibilities
	^ properties at: #batchSizePossibilities ifAbsent: [ self defaulBatchSize ]