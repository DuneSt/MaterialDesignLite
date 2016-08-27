javascript generation
getJsShowingSnackbar
    |dataSetup|
    dataSetup := 'data.message = ''', message,''';
             data.timeout = ', timeout asString, ';'.
    actionText ifNotNil: [ dataSetup := dataSetup, 'data.actionText = ''', actionText, ''';' ].
    ^'var snackbarContainer = document.querySelector(''#', self id asString, ''');
		var handler = function(event) {', 
		  action, 
		'};
	   var data = {};',
		dataSetup,
      'snackbarContainer.MaterialSnackbar.showSnackbar(data);'