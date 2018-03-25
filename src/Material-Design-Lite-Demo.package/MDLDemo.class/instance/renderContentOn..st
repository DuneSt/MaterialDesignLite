rendering
renderContentOn: html
	html
		mdlLayout: [ html render: self header.
			html mdlLayoutContent
				class: 'mdl-color-text--grey-600';
				with: [ html mdlGrid
						noSpacing;
						with: [ html mdlCell
								class: 'mdl-components';
								size: 12;
								with: [ html render: self componentToDisplay ] ].
					html render: self footer ] ]