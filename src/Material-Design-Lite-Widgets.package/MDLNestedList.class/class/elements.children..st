instance creation
elements: aCollection children: aBlockOrSymbole
	^ (self elements: aCollection)
		childrenBlock: aBlockOrSymbole;
		yourself