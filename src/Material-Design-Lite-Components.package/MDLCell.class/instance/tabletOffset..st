options - offsets
tabletOffset: anInteger
	"Adds N columns of whitespace before the cell in tablet mode."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset-tablet'