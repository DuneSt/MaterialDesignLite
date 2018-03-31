private
obtainTreeFor: anElement caches: obtainedTree
	^ obtainedTree
		at: anElement
		ifAbsentPut: [ | childrenNodes |
			childrenNodes := (self childrenBlock value: anElement) collect: [ :aChild | self obtainTreeFor: aChild caches: obtainedTree ].
			MDLNestedListTreeNode
				element: anElement
				children: childrenNodes
				selectedBranch: (childrenNodes anySatisfy: [ :aChild | aChild selectedBranch or: [ aChild selectedElement ] ])
				selectedElement: anElement = self selectedEntity ]