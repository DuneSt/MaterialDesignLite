accessing
header: aCollection
	header := aCollection collect: [ :each | MDLSortableTableHeader for: each ]