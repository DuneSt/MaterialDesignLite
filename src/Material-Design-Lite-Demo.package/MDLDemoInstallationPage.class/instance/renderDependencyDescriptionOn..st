rendering
renderDependencyDescriptionOn: html
	html section
		beCell: 12;
		with: [ html
				definitionList: [ html definitionTerm: 'Dependency'.
					html
						definitionData: [ html paragraph: 'To make your project depend on Material Design for Seaside, just copy the following to your baseline:'.
							html
								preformatted: [ html code
										class: 'smalltalk';
										with:
											'spec
    baseline: ''MaterialDesignLite''
    with: [ spec repository: ''github://DuneSt/MaterialDesignLite:master/src'' ]' ].
							html paragraph: 'Note that you can replace the #master tag by another branch as #development or a tag as #v1.0.0. or a commit SHA as 718c34f.' ] ] ]