rendering
renderContentOn: html
	| id |
	id := html nextId.
	html mdlIcon
		id: id;
		with: self label.
		
	(self helpText isNil or: [ self helpText isEmpty ])
		ifTrue: [ ^ self ].
		
	html mdlTooltip
		large;
		for: id;
		with: [ html text: self helpText ]