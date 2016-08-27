options
addConflictualOption: option
	hasConflictualOptions
		ifFalse: [ 
			self class: 'mdl-button--' , option.
			hasConflictualOptions := true ]