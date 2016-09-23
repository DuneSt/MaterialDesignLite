instance creation
element: anElement children: aCollectionOfChildren selectedBranch: aBoolean selectedElement: aBooleanIfSelected
	^ self new
		element: anElement;
		children: aCollectionOfChildren;
		selectedBranch: aBoolean;
		selectedElement: aBooleanIfSelected;
		yourself