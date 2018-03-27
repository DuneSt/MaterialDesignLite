demos
renderLeftPanelWithResizerOn: html
	html div
		shadow: 2;
		style: 'height: 300px; display: flex;';
		with: [ html leftPanel
				style: 'height: 100%; width: 300px;';
				with: [ html
						render:
							((MDLNestedList
								elements: WAObject allSubclasses
								children: [ :classOrMethod | 
							classOrMethod isClass
								ifTrue: [ classOrMethod methods ]
								ifFalse: [ #() ] ])
								format: #name;
								yourself);
						leftPanelResizer ].
			html div style: 'background-color: #ECEFF1; flex-grow: 1;' ]