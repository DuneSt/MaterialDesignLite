options - sizes
phoneSize: aNumber
	"Sets the column size for the cell to N in phone mode only"
	
	self class: 'mdl-cell--', aNumber asString, '-col-phone'