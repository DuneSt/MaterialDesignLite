accessing
badPasswordBlock
	^ badPasswordBlock ifNil: [ self error: 'Bad password' ]