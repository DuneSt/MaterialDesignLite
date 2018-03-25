demos
renderAjaxActionListOn: html
	| divId divId2 |
	divId := html nextId.
	divId2 := html nextId.
	html div
		style: 'height: 400px; width: 400px;';
		shadow: 2;
		with:
			((MDLNestedList
				elements: WAObject allSubclasses
				children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
				format: #name;
				beCompact;
				onLoadHook: ((html jQuery id: divId) load html: [ :ajaxHtml | ajaxHtml text: 'Ajax hook executed at ' , DateAndTime now printString ]);
				onClickJs: [ :entity | (html jQuery id: divId2) load html: [ :ajaxHtml | ajaxHtml text: 'Selected: ' , entity printString ] ];
				yourself).
	html div mdlTextColorPrimary; id: divId.
	html div mdlTextColorAccent; id: divId2