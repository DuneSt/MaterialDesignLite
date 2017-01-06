javascript generation
closeButtonId: id
   self id ifNil: [ self id: id, '-dialog' ].
   self attributeAt: 'data-closebtnid' put: id. 