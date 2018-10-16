tests
testCurrentPage
	component currentPage: 10.
	self assert: component currentPage equals: 10.
	self should: [ component currentPage: -1 ] raise: SubscriptOutOfBounds.
	self should: [ component currentPage: self defaultNumberOfPages + 1 ] raise: SubscriptOutOfBounds