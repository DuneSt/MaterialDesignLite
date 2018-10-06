javascript
getJsShowingSnackbar
	^ String
		streamContents: [ :s | 
			s
				nextPutAll: 'var snackbarContainer=document.querySelector("#';
				nextPutAll: self id;
				nextPutAll: '");var data={};data.message="';
				nextPutAll: (self message ifNil: [ '' ]);
				nextPutAll: '";data.timeout=';
				nextPutAll: self timeout asString;
				nextPut: $;.
			action
				ifNotNil: [ s
						nextPutAll: 'data.actionText="';
						nextPutAll: (self actionText ifNil: [ 'Action' ]);
						nextPutAll: '";var handler=function(event){';
						nextPutAll: self action;
						nextPutAll: '};data.actionHandler=handler;' ].
			s nextPutAll: 'snackbarContainer.MaterialSnackbar.showSnackbar(data);' ]