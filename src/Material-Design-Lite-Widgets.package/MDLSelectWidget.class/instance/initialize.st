initialization
initialize
	super initialize.
	
	"In case the user does not set any possibilities, show a disable select widget instead of throwing an error during the redering because the possibilities are nil instead of an empty collection."
	possibilities := #()