rendering
render: componentsMap on: html
	html mdlGrid
		class: 'examples';
		with: [ 
					componentsMap
						valuesDo: [ :block | 
							html mdlLayoutSpacer.
							html mdlCell
								size: 2;
								with: [ block value: html ] ].
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			componentsMap
				keysDo: [ :title | 
					html mdlLayoutSpacer.
					html mdlCell
						size: 2;
						with: title ].
			html mdlLayoutSpacer ].
	componentsMap
		valuesDo: [ :block | 
			html
				preformatted: [ 
					html code
						class: 'smalltalk';
						with: (self codeOf: block) ] ]