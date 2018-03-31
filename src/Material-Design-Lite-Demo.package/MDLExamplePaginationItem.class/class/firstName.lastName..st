instance creation
firstName: aString lastName: anotherString
	^ self new
		firstName: aString;
		lastName: anotherString;
		yourself