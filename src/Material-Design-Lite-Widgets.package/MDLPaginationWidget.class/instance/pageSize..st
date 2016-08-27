accessing
pageSize: anObject
	"Set the pageSize and update groups"

	groups := groups concatenation asOrderedCollection groupsOf: anObject.
	pageSize := anObject