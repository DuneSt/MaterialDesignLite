sizes
desktopSize: aNumber
	"Sets the column size for the cell to N in desktop mode only"
	
	self class: 'mdl-cell--', aNumber asString, '-col-desktop'