Class {
	#name : #MDLMASelectListRowsComponent,
	#superclass : #MASelectListRowsComponent,
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #'rendering-grouped' }
MDLMASelectListRowsComponent >> renderEditorForGroupedOn: html [
	html select
		id: self labelId;
		dispatchCallback;
		size: self itemsDisplayed;
		with: [ self renderGroupsOn: html ]
]

{ #category : #rendering }
MDLMASelectListRowsComponent >> renderEditorForUngroupedOn: html [
	html
		render:
			((MDLSelectWidget
				possibilities: self options
				inputLabel: self magritteDescription label
				labelBlock: [ :anOption | anOption ]
				callback: [ :anOption | 1 halt ]) id: self labelId)
]
