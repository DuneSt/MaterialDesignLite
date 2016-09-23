rendering
render: componentsMap withCardSizeOf: anInteger on: html
	html mdlGrid
		class: 'examples';
		with: [ 
					componentsMap
						valuesDo: [ :symbol | 
							html mdlLayoutSpacer.
							html mdlCell
								size: anInteger;
								with: [ self perform: symbol with: html ] ].
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			componentsMap
				keysDo: [ :title | 
					html mdlLayoutSpacer.
					html mdlCell
						size: anInteger;
						with: title ].
			html mdlLayoutSpacer ].
	componentsMap
		valuesDo: [ :symbol | 
			html
				preformatted: [ 
					html code
						class: 'smalltalk';
						with: (self codeOf: symbol) ] ]