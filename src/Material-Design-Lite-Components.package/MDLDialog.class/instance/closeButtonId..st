javascript generation
closeButtonId: id   self id ifNil: [ self id: id, '-dialog' ].
	self script: (JSStream on: 
		('document.querySelector(''#{2}'')
			.addEventListener(''click'', function() \{
				document.querySelector(''#{1}'').close();
       });' format: {self id.  id}))