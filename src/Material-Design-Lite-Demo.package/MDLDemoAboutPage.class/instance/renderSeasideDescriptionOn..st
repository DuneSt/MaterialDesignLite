rendering
renderSeasideDescriptionOn: html
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Seaside'.
					html
						definitionData: [ html
								paragraph: [ html anchor
										url: 'https://github.com/SeasideSt/Seaside';
										with: 'Seaside'.
									html
										text:
											' provides a layered set of abstractions over HTTP and XHTML that let you build highly interactive web applications quickly, reusably and maintainably. It is based on Smalltalk, a proven and robust language that is implemented by different vendors.' ] ] ] ]