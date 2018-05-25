rendering
renderContentOn: html
	html mdlIcon
		id: html nextId;
		attributeAt: 'data-fold' put: self isFolded asString;
		attributeAt: 'data-for' put: self divId;
		class: #'fold-button';
		onClick:
			(html jQuery ajax
				context: 'this' js;
				callback: [ self isFolded: self isFolded not ];
				onComplete: self showAndHide);
		with: self iconLabel.
	html mdlTooltip
		large;
		for: html lastId;
		with: 'Toggle right panel'.
	self isFolded
		ifTrue: [ html document addLoadScript: ('document.getElementById(''' , self divId allButFirst , ''').style.width=''0'';' , self onCompleteScript) js ]