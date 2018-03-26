rendering
renderMDDescriptionOn: html
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Material Design'.
					html
						definitionData: [ html
								paragraph:
									'Material is a metaphor, a system for uniting style, branding, interaction, and motion under a consistent set of principles. With Material we believe product teams can realize their greatest design potential.'.
							html
								paragraph: [ html anchor
										url: 'https://material.io/guidelines/material-design/';
										with: 'The Material Design guidelines'.
									html
										text:
											' are a living document of visual, interactive, and motion guidance from Google.' ] ] ] ]