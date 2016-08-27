rendering
generateJavascriptForButtonId: buttonId menuId: menuId hiddenInputId: hiddenInputId
	^ JSStream on: 
		(
	'(function () \{
		function selectedValue (value) \{ 
			document.getElementById("{1}").innerHTML = value;
			document.getElementById("{2}").setAttribute("value", value);
		\};
	
		var elements = document.querySelectorAll("#{3} a"); 
		for (i = 0; i < elements.length; i++) \{
			var element = elements[i];
			element.addEventListener("click", function (e) \{
				selectedValue(e.target.innerHTML) 
			\} );
		\}
	\})();'  format: { buttonId . hiddenInputId. menuId })