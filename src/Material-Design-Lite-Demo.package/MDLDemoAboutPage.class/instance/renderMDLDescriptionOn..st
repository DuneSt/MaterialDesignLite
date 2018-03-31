rendering
renderMDLDescriptionOn: html
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Material Design Lite'.
					html
						definitionData: [ html
								paragraph:
									'Material Design Lite for Seaside lets you add a Material Design look and feel to your websites. It doesn’t rely on any JavaScript frameworks and aims to optimize for cross-device use, gracefully degrade in older browsers, and offer an experience that is immediately accessible.'.
							html
								paragraph: [ html text: 'This project is built on top of '.
									html anchor
										url: 'https://getmdl.io/index.html';
										with: 'Material Design Lite'.
									html text: ' implementation from Google.' ] ] ] ]