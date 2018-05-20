sizes
size: aNumber
	"Sets the column size for the cell to N for desktop, table and phone"

	self class: 'mdl-cell--', aNumber asString, '-col'