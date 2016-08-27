I am a component use to display nicely a list of elements. 
I am also able to display nested list as a tree.

Description
------------------

I display a list of elements and I manage most of the css needed to make a good rendering.
For the icon check MDLListIconComponent or give any component you want.

For more info you can test the demo.

Public API and Key Messages
------------------

- #actionBlock: aBlock 			Allow to set an action to execute on click
- #elements: aCollection			Is the list of elements to display
- #children: aBlock 				Return for each element his childrens
- #format: aBlock 					Is a block that take an element and return the element with the right format
- #selectedEntity: anElement 		If the element in parameter is in the list, it zill be highlighted 
- #helpBlock: aBlock 				Allow to add a fly by help on elements
- #iconBlock: aBlock 				Allow to add an icon on each line

Example
------------------
 
	(SYNListComponent elements: #(1 34 56 89) children: [ :number | number even ifTrue: [ {(number + 1) . (number + 3) } ] ifFalse: [ #() ] ] ])
		actionBlock: [ :elem | Transcript crShow: elem asString ];
		format: [ :elem | elem asString , '%' ];
		selectedEntity: 34;
		yourself

Internal Representation and Key Implementation Points.
------------------

    Instance Variables
	actionBlock:		<aBlockOrSymbol> 	A block executed when an element is selected
	children: 		<aBlockOrSymbol> 	A block that return the list of children of an element
	elements:		<aCollection> 		A collection of elements to display
	format:			<aBlockOrSymbol> 	A block executed to format an element
	selectedEntity:	<anElement> 		An element that need to be highlighted in the list
	helpBlock:		<aBlockOrSymbol>	A block that return an optional fly-by-felp for an element
	iconBlock:		<aBlockOrSymbol>	A block thet return an optional SYNListIconComponent for a line of the list