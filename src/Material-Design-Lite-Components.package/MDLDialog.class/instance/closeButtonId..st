javascript generation
closeButtonId: id
   self id ifNil: [ self id: id, '-dialog' ].
	self script: (JSStream on: 
		'var dialog = document.querySelector(''#', self id, ''');
		
       dialog.querySelector(''#', id,''').addEventListener(''click'', function() {
         dialog.close();
       });')