javascript
selectInitJsScriptFor: anId
	^ 'getmdlSelect.init("#' , anId , '"); document.addEventListener("DOMNodeInserted", function (ev) { componentHandler.upgradeDom(); }, false);'