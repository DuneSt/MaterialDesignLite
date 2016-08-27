initialization
initialize
	super initialize.
	title := 'Define a title'.
	icon := MDLIconComponent new.
	headerSection := MDLNilLayoutSection new.
	drawerSection := MDLNilLayoutSection new.
	footerSection := MDLNilLayoutSection new.
	contentBlock := [ ].
	brush := MDLLayout new. 