asserting
executeWithMockContext: aBlock
	WACurrentRequestContext use: MDLMockRequestContext new during: [ aBlock value ]