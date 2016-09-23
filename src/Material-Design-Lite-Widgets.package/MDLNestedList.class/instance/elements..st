accessing
elements: anObject
	elements := anObject.
	"reinitialize the filter when list change"
	self displayResearchFilter: ''