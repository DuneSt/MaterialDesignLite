javascript generation
getJsShowingSnackbar
	^ String
		streamContents: [ :s | 
			s
				<< 'var snackbarContainer=document.querySelector(''#';
				<< self id;
				<< ''');var data={};';
				<< 'data.message=''';
				<< message;
				<< ''';data.timeout=';
				<< timeout asString;
				<< $;.
			(actionText notNil and: [ action notNil ])
				ifTrue: [ 
					s
						<< 'data.actionText=''';
						<< actionText;
						<< ''';var handler=function(event){';
						<< action;
						<< '};data.actionHandler=handler;' ].
			s << 'snackbarContainer.MaterialSnackbar.showSnackbar(data);' ]