as yet unclassified
for: buttonId
	self id: buttonId, '-dialog'.
	self script: (JSStream on: 
		'var dialog = document.querySelector(''#', self id, ''');
       var showDialogButton = document.querySelector(''#', buttonId,''');
       if (! dialog.showModal) {
         dialogPolyfill.registerDialog(dialog);
       }
       showDialogButton.addEventListener(''click'', function() {
         dialog.showModal();
       });
       dialog.querySelector(''.close'').addEventListener(''click'', function() {
         dialog.close();
       });')