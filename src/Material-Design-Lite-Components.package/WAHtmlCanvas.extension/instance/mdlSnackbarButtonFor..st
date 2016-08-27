*Material-Design-Lite-Components
mdlSnackbarButtonFor: aMDLSnackBar
	| button |
	button := MDLButton new.
	self brush: button.
	button onClick: aMDLSnackBar getJsShowingSnackbar.
	^ button