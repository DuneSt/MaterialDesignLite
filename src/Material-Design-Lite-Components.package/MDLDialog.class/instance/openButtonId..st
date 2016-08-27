javascript generation
openButtonId: id
   self id ifNil: [ self id: id, '-dialog' ].
	self script: (JSStream on: 
		('(function() \{
		 var dialog = document.querySelector(''#{1}'');
       var showDialogButton = document.querySelector(''#{2}'');
       if (! dialog.showModal) \{
         dialogPolyfill.registerDialog(dialog);
       }
       showDialogButton.addEventListener(''click'', function() \{
         dialog.showModal();
       });
		})()' format: {self id.  id}))