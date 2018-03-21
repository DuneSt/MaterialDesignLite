initialization
initialize
	super initialize.
	self header: self defaultHeader.
	self footer: self defaultFooter.
	self session rootComponent: self