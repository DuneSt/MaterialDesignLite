rendering
renderContentOn: html
	self examples
		do: [ :each | 
			html mdlGrid: [ 
				html mdlCell: [ html anchor: each label ] size: 9.
				html mdlLayoutSpacer.
				html
					mdlCell: [ 
						html anchor
							callback: [ self show: each new ];
							with: [ html mdlButton
											fab;
											miniFab;
											with: [ html mdlIcon: 'keyboard_arrow_right' ] ].
						html break ]
					size: 2 ] ]