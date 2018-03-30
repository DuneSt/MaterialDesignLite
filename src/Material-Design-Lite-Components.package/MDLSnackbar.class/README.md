Description
--------------------

Transient popup notifications.

Example
--------------------

	| snackbar |
	snackbar := html mdlSnackbar
		message: 'Action finished.';
		timeout: 3000;
		yourself.
	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		with: 'Show toast'
		

Internal Representation and Key Implementation Points.
--------------------

	actionText is the text of the button in the snackbar, it could be something like an 'undo' button
	action is the action to execute when the actionText button is pressed