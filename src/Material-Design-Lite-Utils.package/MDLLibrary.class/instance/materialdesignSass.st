sass
materialdesignSass
	^ '@import "variables"

@import "nestedList"
@import "select"
@import "slider"
@import "calendar"
@import "paginationWidget"

.mdl-chip__contact
  background-color: rgba(0,0,0,0.1)

.mdl-chip
  +user-select(none)
'