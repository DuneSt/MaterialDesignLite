rendering-parts
renderEditorSelectedOn: html
	html 
		mdlCell: [ 
			html select
				size: 6;
				list: self selectedList;
				selected: self selectedSelected;
				callback: [ :value | self selectedSelected: value ];
				labels: [ :value | self labelForOption: value ] ]
		size: 4