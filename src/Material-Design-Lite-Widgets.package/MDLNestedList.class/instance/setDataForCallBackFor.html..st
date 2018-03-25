javascript
setDataForCallBackFor: div html: html
	div
		attributeAt: #'data-url' put: html actionUrl asString;
		attributeAt: #'data-cbId' put: (self defineScrollCallbackOn: div) asString;
		attributeAt: #'data-childrenCbId' put: (self defineChildrenCallbackOn: div) asString;
		attributeAt: #'data-listMaxSize' put: self listMaxSize asString;
		attributeAt: #'data-lastIndexAsked' put: (self filteredElements indexOf: self selectedEntity ifAbsent: 1) asString;
		attributeAt: #'data-onLoadHook' put: (self onLoadHook isString ifTrue: [ self onLoadHook js ] ifFalse: [ self onLoadHook ]);
		attributeAt: #'data-loadingstep' put: self listElementsDynamicalLoadingStep asString