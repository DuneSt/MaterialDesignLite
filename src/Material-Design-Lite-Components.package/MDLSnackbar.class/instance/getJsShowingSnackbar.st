javascript generation
getJsShowingSnackbar
    |dataSetup|
    dataSetup := 'data.message = ''', message,''';
             data.timeout = ', timeout asString, ';'.
    (actionText notNil and: [action notNil]) ifTrue: [ 
		dataSetup := dataSetup, '
			data.actionText = ''', actionText, ''';
			var handler = function(event) {', 
				action, 
			'};
			data.actionHandler = handler;' ].
    ^'var snackbarContainer = document.querySelector(''#', self id asString, ''');
	   var data = {};',
		dataSetup,
      'snackbarContainer.MaterialSnackbar.showSnackbar(data);'