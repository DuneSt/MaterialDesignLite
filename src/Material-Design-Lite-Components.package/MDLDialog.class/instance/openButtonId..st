javascript generation
openButtonId: id
	self id ifNil: [ self id: id , '-dialog' ].
	self attributeAt: 'data-openbtnid' put: id.
	self script: ('newDialog("' , self id , '")') js