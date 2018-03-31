rendering
renderStartDescriptionOn: html
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Start'.
					html
						definitionData: [ html
								paragraph:
									'We use as a base the files product by Google''s Material Design Lite. To have a working Material Design Seaside application we need to add those files. Most of them can be easily added via a file library but one file need to be explicitely added because this file change depending on the colors you wish for your application.'.
							html paragraph: 'To use MaterialDesign you will need to add JQuery and Material Design library to your application:'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'(WAAdmin register: self asApplicationAt: ''myApplication'')
	addLibrary: JQDeploymentLibrary;
	addLibrary: MDLLibrary' ].
							html paragraph: 'Then you will need to add the css file with the colors. To do so, you will have two options:'.
							html
								unorderedList: [ html
										listItem: 'Add it to your file library';
										listItem: 'Add it in your #updateRoot:' ].
							html
								paragraph: [ html text: 'You can find the files on '.
									html anchor
										url: 'https://getmdl.io/customize/index.html';
										with: 'https://getmdl.io/customize/index.html' ].
							html
								paragraph: [ html text: 'They are in the form of: '.
									html anchor
										url: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css';
										with: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css' ].
							html
								unorderedList: [ html
										listItem: 'XXX = primary color of the application';
										listItem: 'YYY = accent color of the application' ].
							html
								paragraph: 'As said, the second is to add the right like link in the #updateRoot: methode of your application. (Note that this method will require your application to have an acces to internet to work).'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'MyApplication>>updateRoot: anHtmlRoot
	    super updateRoot: anHtmlRoot.
	    anHtmlRoot beHtml5.
	    anHtmlRoot stylesheet url: (WAUrl absolute: ''https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css'').' ] ] ] ]