options - offsets
phoneOffset: anInteger
	"Adds N columns of whitespace before the cell in phone mode."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset-phone'