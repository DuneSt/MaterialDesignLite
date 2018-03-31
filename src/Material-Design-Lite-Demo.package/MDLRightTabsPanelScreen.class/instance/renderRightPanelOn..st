demos
renderRightPanelOn: html
	"The code is not really useful here since this extension it managed by Traits.
	
	Please, browse the code of the example class bellow in your Seaside image.
	
	To make a Seaside component use this feature you need to:
- Make your component use the TRightTabsPanelBrowser trait.
- Implement the #browserClass method. It should return a symbol to use to prefix html classes.
- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.
- Implement the instance variables, getter and setters for the toolbar and right panel components.
- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.
- Call #initialijeRightPanel from the initialize method of the component.
- Call #renderRightPanelOn: during the rendering phase of the component"
	
	html div
		shadow: 2;
		style: 'height: 500px; display: flex;';
		with: MDLExampleComponentWithRightPanel new