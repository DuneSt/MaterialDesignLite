javascript generation
openButtonId: id
   self id ifNil: [ self id: id, '-dialog' ].
	self script: (JSStream on: 
		('var showDialogButton = document.querySelector(''#{2}'');
        var dialog = document.querySelector(''#{1}'');
        if (!dialog.showModal) \{
          dialogPolyfill.registerDialog(dialog);
        }
        showDialogButton.addEventListener(''click'', function() \{
          document.querySelector(''#{1}'').showModal();
        });'  format: {self id.  id}))