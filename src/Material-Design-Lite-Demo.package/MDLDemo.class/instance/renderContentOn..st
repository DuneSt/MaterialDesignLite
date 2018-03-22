rendering
renderContentOn: html
	html
		mdlLayout: [ html render: self header.
			html
				mdlLayoutContent: [ html mdlGrid
						noSpacing;
						with: [ html mdlCell: [ html render: self componentToDisplay ] size: 12 ].
					html render: self footer ] ]