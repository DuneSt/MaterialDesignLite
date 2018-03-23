rendering
render: componentsMap withCardSizeOf: anInteger on: html
	html div
		class: 'snippet-group';
		with: [ html div
				class: 'snippet-header';
				with: [ html div
						class: 'snippet-demos';
						with: [ html div class: 'snippet-demo-padding'.
							componentsMap
								valuesDo: [ :symbol | 
									html div
										class: 'snippet-demo';
										with: [ html div
												class: 'snippet-demo-container';
												with: [ self perform: symbol with: html ] ] ].
							html div class: 'snippet-demo-padding' ].
					html div
						class: 'snippet-captions';
						with: [ html div class: 'snippet-caption-padding'.
							componentsMap
								keysDo: [ :label | 
									html div
										class: 'snippet-caption';
										with: label ].
							html div class: 'snippet-caption-padding' ] ].
			html div
				class: 'snippet-code';
				with: [ componentsMap
						valuesDo: [ :symbol | 
							html
								preformatted: [ html code
										class: 'smalltalk';
										with: (self codeOf: symbol) ] ] ] ]