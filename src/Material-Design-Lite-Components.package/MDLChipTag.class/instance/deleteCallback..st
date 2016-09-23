public api
deleteCallback: aNiladicValuable
	self
		addDeleteWithAppendBlock: [ :html | 
			html anchor
				callback: aNiladicValuable;
				class: #'mdl-chip__action';
				with: [ html mdlIcon: #cancel ] ]
		callback: aNiladicValuable