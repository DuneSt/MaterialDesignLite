asserting
executeWithMockContext: aBlock
	WACurrentRequestContext use: (WARequestContext request: WARequest new response: WABufferedResponse new) during: [ aBlock value ]