code
renderNestedListOn: html
	| divId |
	divId := html nextId.
	html div
		style: 'text-align: left; display:flex;height: 600px; background-color: #CFD8DC;';
		class: 'mdl-shadow--2dp';
		with: [ html
				render:
					((MDLNestedList
						elements: WAObject allSubclasses
						children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
						format: #name;
						helpBlock: #comment;
						withResearchField;
						onClickJs:
								[ :entity | (html jQuery id: divId) load html: [ :ajaxHtml | self renderNestedListOn: ajaxHtml ] ]).
			html div id: divId ]