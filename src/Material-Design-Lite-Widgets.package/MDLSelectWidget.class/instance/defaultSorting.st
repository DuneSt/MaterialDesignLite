public api
defaultSorting
	"Default sorting."

	self sortBlock: [ :a :b | a value <= b value ]