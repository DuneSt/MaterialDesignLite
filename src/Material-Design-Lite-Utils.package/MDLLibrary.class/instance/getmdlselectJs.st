select
getmdlselectJs
	^ '
"use strict";
var getmdlSelect = {
	addEventListeners: function(e) { 
		var t = e.querySelector("input") , 
		n = e.querySelectorAll("li");
		[].forEach.call(n,function(n) {
			n.onclick = function(){ 
				if(e.MaterialTextfield.change(n.textContent),t.dataset.val=n.dataset.val||"","createEvent"in document){
					var c = document.createEvent("HTMLEvents");
					c.initEvent("change",!1,!0),t.dispatchEvent(c)
				} else 
					t.fireEvent("onchange")
			}
		})
	},
	init: function(e) { 
		var t = document.querySelectorAll(e);
		[].forEach.call(t,function(e){
			getmdlSelect.addEventListeners(e)
		})
	}
};'