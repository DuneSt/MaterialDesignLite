javascript generation
openButtonId: id
   self id ifNil: [ self id: id, '-dialog' ].
	self script: (JSStream on: 
		'var dialog = document.querySelector(''#', self id, ''');
       var showDialogButton = document.querySelector(''#', id,''');
       if (! dialog.showModal) {
         dialogPolyfill.registerDialog(dialog);
       }
       showDialogButton.addEventListener(''click'', function() {
         dialog.showModal();
       });')