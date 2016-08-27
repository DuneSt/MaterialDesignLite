public api
deleteCallback: aNiladicValuable
	self
		addDeleteWithAppendBlock: [ :html | 
			html anchor
				callback: aNiladicValuable;
				with: [ 
							html mdlIcon
								class: #'mdl-chip__deleteIcon';
								with: #cancel ] ]
		callback: aNiladicValuable