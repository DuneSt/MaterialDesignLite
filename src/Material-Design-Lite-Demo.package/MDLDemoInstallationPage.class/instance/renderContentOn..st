rendering
renderContentOn: html
	html mdlGrid
		noSpacing;
		class: 'mdl-doc';
		with: [ self renderInstallOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'metaphorPng').
			self renderDependencyDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'boldPng').
			self renderStartDescriptionOn: html.
			html image
				class: 'mdl-illustration';
				url: (MDLDemoLibrary urlOf: 'motionPng').
			html section beCell: 12 ]