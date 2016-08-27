as yet unclassified
closeButtonClass: class
   self id ifNil: [ self id: class, '-dialog' ].
	self script: (JSStream on: 
		'var dialog = document.querySelector(''#', self id, ''');
		
       dialog.querySelector(''.', class,''').addEventListener(''click'', function() {
         dialog.close();
       });')