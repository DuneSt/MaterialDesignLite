Class {
	#name : #MDLMAListCompositionComponent,
	#superclass : #MAListCompositonComponent,
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #'rendering-parts' }
MDLMAListCompositionComponent >> renderEditorAvailableOn: html [
	html mdlCell: [ 
		html select
			size: 6;
			list: self availableList;
			selected: self availableSelected;
			callback: [ :value | self availableSelected: value ];
			labels: [ :value | self labelForOption: value ] ] size: 4
]

{ #category : #'rendering-buttons' }
MDLMAListCompositionComponent >> renderEditorButtonAddOn: html [
	html mdlButton
		beSubmit;
		callback: [ self add ];
		with: [ html mdlIcon: 'forward' ].
	html break.
	html mdlButton
		beSubmit;
		callback: [ self remove ];
		with: [ html mdlIcon: 'backward' ]
]

{ #category : #'rendering-buttons' }
MDLMAListCompositionComponent >> renderEditorButtonOrderOn: html [
	html mdlButton
		beSubmit;
		callback: [ self moveUp ];
		with: [ html mdlIcon: 'expand_less' ].
	html break.
	html mdlButton 
		beSubmit
		callback: [ self moveDown ];
		with: [ html mdlIcon: 'expand_more']
]

{ #category : #rendering }
MDLMAListCompositionComponent >> renderEditorOn: html [
	self flag: #TODO.
		html table id: self labelId; with: [
		html tableRow: [
			html tableData: [ self renderEditorAvailableOn: html ].
			html tableData 
				style: 'vertical-align: center';
				with: [ self renderEditorButtonAddOn: html ].
			html tableData: [ self renderEditorSelectedOn: html ].
			self isOrdered ifTrue: [
				html tableData 
					style: 'vertical-align: center';
					with: [ self renderEditorButtonOrderOn: html ] ] ] ].
]

{ #category : #'rendering-parts' }
MDLMAListCompositionComponent >> renderEditorSelectedOn: html [
	html 
		mdlCell: [ 
			html select
				size: 6;
				list: self selectedList;
				selected: self selectedSelected;
				callback: [ :value | self selectedSelected: value ];
				labels: [ :value | self labelForOption: value ] ]
		size: 4
]
