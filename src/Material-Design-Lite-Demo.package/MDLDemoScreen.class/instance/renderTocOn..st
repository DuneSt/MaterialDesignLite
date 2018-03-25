rendering
renderTocOn: html
	html div
		class: 'docs-toc';
		with: [ html unorderedList
				class: 'navigation';
				with: [ self sections
						keysAndValuesDo: [ :id :label | 
							html
								listItem: [ html anchor
										url: id;
										with: label ] ] ] ]