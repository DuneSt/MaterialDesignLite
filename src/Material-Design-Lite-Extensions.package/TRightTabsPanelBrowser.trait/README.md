Description
--------------------

I am a trait to help to create a browser with a panel to the right and a toolbar to manage the panel content.

To use it you need to:
- Make your component use the TRightTabsPanelBrowser trait.
- Implement the #browserClass method. It should return a symbol to use to prefix html classes.
- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.
- Implement the instance variables, getter and setters for the toolbar and right panel components.
- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.
- Call #initialijeRightPanel from the initialize method of the component.
- Call #renderRightPanelOn: during the rendering phase of the component.