options - offsets
desktopOffset: anInteger
	"Adds N columns of whitespace before the cell in desktop mode."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset-desktop'