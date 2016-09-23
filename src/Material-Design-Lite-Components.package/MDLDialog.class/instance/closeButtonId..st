javascript generation
closeButtonId: id
   self id ifNil: [ self id: id, '-dialog' ].
	self script: (JSStream on: 
		('(function() \{ 
		var dialog = document.querySelector(''#{1}'');
       dialog.querySelector(''#{2}'').addEventListener(''click'', function() \{
         dialog.close();
       });
		})()' format: { self id. id }))