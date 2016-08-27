private
obtainTreeFor: anElement
	| childrenNodes |
	childrenNodes := (self childrenBlock value: anElement) collect: [ :aChild | self obtainTreeFor: aChild ].
	^ MDLNestedListTreeNode
		element: anElement
		children: childrenNodes
		selectedBranch: (childrenNodes anySatisfy: [ :aChild | aChild selectedBranch or: [ aChild selectedElement ] ])
		selectedElement: anElement = self selectedEntity