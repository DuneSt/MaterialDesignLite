accessing
items: aCollection
	items := aCollection asOrderedCollection.
	groups := items groupsOf: pageSize