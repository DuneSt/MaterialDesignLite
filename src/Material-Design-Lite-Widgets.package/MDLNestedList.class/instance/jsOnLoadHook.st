javascript
jsOnLoadHook
	^ self onLoadHook isString
		ifTrue: [ self onLoadHook js ]
		ifFalse: [ self onLoadHook ]