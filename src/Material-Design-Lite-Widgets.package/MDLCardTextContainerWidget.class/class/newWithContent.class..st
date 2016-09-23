instance creation
newWithContent: anObject class: cssClasses
	^ self new
		content: anObject;
		class: cssClasses;
		yourself