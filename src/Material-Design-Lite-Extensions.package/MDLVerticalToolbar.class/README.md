I am a component to display a vertical toolbar.

Description
-------------------

I will stick to a panel and add some buttons with actions to act on a panel.

For now I can only be added to the left of a panel but maybe in the future I can evolve to also stick to the right of a panel.

Example
------------------

		html
			render:
				(MDLVerticalToolbar
					buttons:
						{(MDLFoldButton for: '#my-browser-info' callback: 'setTimeout(function(){console.log("callback");for(var i in visus){visus[i].visu.resize().center()}},800)')
						.
						(MDLFoldButton for: '#my-browser-info' callback: 'setTimeout(function(){console.log("callback");for(var i in visus){visus[i].visu.resize().center()}},800)')}).
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	buttons:		<aCollection> 	A collection of components to show on the toolbar.