javascript
getJsShowingSnackbar
	^ String
		streamContents: [ :s | 
			s
				<< 'var snackbarContainer=document.querySelector("#';
				<< self id;
				<< '");var data={};data.message="';
				<< (self message ifNil: [ '' ]);
				<< '";data.timeout=';
				<< self timeout asString;
				<< $;.
			action
				ifNotNil: [ s
						<< 'data.actionText="';
						<< (self actionText ifNil: [ 'Action' ]);
						<< '";var handler=function(event){';
						<< self action;
						<< '};data.actionHandler=handler;' ].
			s << 'snackbarContainer.MaterialSnackbar.showSnackbar(data);' ]