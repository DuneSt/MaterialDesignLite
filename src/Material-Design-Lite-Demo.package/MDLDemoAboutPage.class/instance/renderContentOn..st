rendering
renderContentOn: html
	html mdlGrid
		noSpacing;
		class: 'mdl-doc';
		with: [ self renderMDDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'metaphorPng').
			self renderMDLDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'boldPng').
			self renderSeasideDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'motionPng').
			html section beCell: 12 ]