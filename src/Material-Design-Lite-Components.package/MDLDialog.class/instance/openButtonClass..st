as yet unclassified
openButtonClass: class
   self id ifNil: [ self id: class, '-dialog' ].
	self script: (JSStream on: 
		'var dialog = document.querySelector(''#', self id, ''');
       var showDialogButton = document.querySelector(''.', class,''');
       if (! dialog.showModal) {
         dialogPolyfill.registerDialog(dialog);
       }
       showDialogButton.addEventListener(''click'', function() {
         dialog.showModal();
       });')