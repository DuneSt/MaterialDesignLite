accessing
header: aCollection
	header := aCollection collect: [ :each | each asMDLSortableTableHeader ]