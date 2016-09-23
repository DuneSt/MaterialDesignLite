instance creation
newWithTitle: aString level: aNumber class: cssClasses
	^ self new
		title: aString;
		level: aNumber;
		class: cssClasses;
		yourself