rendering
renderInstallOn: html
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Install'.
					html
						definitionData: [ html paragraph: 'To install MaterialDesignLite on your Pharo image you can just execute the following script:'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'Metacello new
    repository: ''github://DuneSt/MaterialDesignLite:master/src'';
    baseline: ''MaterialDesignLite'';
    onWarningLog;
    load' ].
							html paragraph: 'Note that you can replace the #master tag by another branch as #development or a tag as #v1.0.0. or a commit SHA as 718c34f.' ] ] ]