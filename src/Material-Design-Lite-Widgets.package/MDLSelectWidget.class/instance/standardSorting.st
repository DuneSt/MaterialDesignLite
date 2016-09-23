public api
standardSorting
	"Use the default #<= on the objects values directly."

	self sortBlock: [ :a :b | a value <= b value ]