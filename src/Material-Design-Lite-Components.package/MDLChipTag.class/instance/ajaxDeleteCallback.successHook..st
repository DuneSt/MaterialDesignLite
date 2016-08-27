public api
ajaxDeleteCallback: aNiladicValuable successHook: aString
	self
		addDeleteWithAppendBlock: [ :html | 
			html mdlIcon
				onClick:
						(canvas jQuery ajax
								callback: aNiladicValuable;
								context: (JSStream on: 'this');
								onSuccess: '$(this).parent().remove();' , aString;
								onError: 'location.reload()');
				class: #'mdl-chip__deleteIcon';
				with: #cancel ]
		callback: aNiladicValuable