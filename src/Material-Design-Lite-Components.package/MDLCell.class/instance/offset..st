options - offsets
offset: anInteger
	"Adds N columns of whitespace before the cell."
	
	self class: 'mdl-cell--' , anInteger asString , '-offset'