public api
ajaxDeleteCallback: aNiladicValuable successHook: aString
	aNiladicValuable argumentCount > 0
		ifTrue: [ GRInvalidArgumentCount signal: 'Chip expect a niladic callback.' ].
	self
		onClick:
			(canvas jQuery ajax
				callback: aNiladicValuable;
				context: (JSStream on: 'this');
				onSuccess: '$(this).parent().remove();' , aString;
				onError: 'location.reload()').
	self class: #'mdl-chip__deletable-ajax'