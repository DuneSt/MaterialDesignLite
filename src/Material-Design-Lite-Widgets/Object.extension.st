Extension { #name : #Object }

{ #category : #'*Material-Design-Lite-Widgets' }
Object >> asMDLSortableTableHeader [
	^ MDLSortableTableHeader for: self
]

{ #category : #'*Material-Design-Lite-Widgets' }
Object >> asNumericMDLSortableTable [
	^ MDLSortableTableHeaderNumeric for: self
]
