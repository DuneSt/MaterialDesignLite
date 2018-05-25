public api
ajaxDeleteCallback: aNiladicValuable successHook: aString
	self
		addDeleteWithAppendBlock: [ :html | 
			html span
				onClick:
					(canvas jQuery ajax
						callback: aNiladicValuable;
						context: 'this' js;
						onSuccess: '$(this).parent().remove();' , aString;
						onError: 'location.reload()');
				class: #'mdl-chip__action';
				with: [ html mdlIcon: #cancel ] ]
		callback: aNiladicValuable